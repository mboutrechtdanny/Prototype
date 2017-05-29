<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class MysqlDump extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'db:mysqldump';

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
        $db = env('DB_DATABASE', 'c9');

        $user = env('DB_USERNAME', 'dannycao');
        $pass = env('DB_PASSWORD');

        $backupFolder = 'backups';

        $file = 'backups/' . date('Y-m-d') . '-' . time() . 'backup.sql';

        $command = 'mysqldump -u '.$user.' '.$db.' > ' . $file;

        if (!is_dir('backups')) {
            mkdir('backups', 0755, true);
        }

        exec($command);
        
          $fi = new \FilesystemIterator($backupFolder, \FilesystemIterator::SKIP_DOTS);
        $backupsCount = iterator_count($fi);

        // delete the first file from a directory

        // run every ? 5 minutes, after 288 files (24 hours), delete the first backup
        // to conserve disk space

        // i put $maxBackupCount to 5 to demonstrate the proces of deleting the first entry
        $maxBackupCount = 5;

        if($backupsCount > $maxBackupCount) {

            $files = scandir ($backupFolder);
            unlink($backupFolder. '/'.$files[2]);
        }
    }
}
