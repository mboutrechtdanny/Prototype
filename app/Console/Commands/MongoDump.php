<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class MongoDump extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'db:mongodump';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
                // command to restore previous dump
        // mongorestore -d confsite --drop backups_mongodb/2017-05-29_1496056584_bak/confsite/

        $backupFolder = 'backups_mongodb';

        if (!is_dir($backupFolder)) {
            mkdir($backupFolder, 0755, true);
        }

        $command = 'mongodump -d order -o "backups_mongodb/'. date('Y-m-d') . '_' . time() . '_bak' .'"';

        exec($command);

        $fi = new \FilesystemIterator($backupFolder, \FilesystemIterator::SKIP_DOTS);
        $backupsCount = iterator_count($fi);

        // delete the first file from a directory

        // run every ? 5 minutes, after 288 files (24 hours), delete the first backup
        // to conserve disk space

        // i put $maxBackupCount to 5 to demonstrate the proces of deleting the first entry
        $maxBackupCount = 5;

        function deleteDir($path) {
            return is_file($path) ?
                @unlink($path) :
                array_map(__FUNCTION__, glob($path.'/*')) == @rmdir($path);
        }

        if($backupsCount > $maxBackupCount) {

            $files = scandir ($backupFolder);
            deleteDir($backupFolder. '/'.$files[2]);
        }
    }
}
