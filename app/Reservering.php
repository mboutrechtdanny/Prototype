<?php

namespace App;

use Jenssegers\MongoDB\Eloquent\HybridRelations;
use Jenssegers\MongoDB\Eloquent\Model;


class Reservering extends Model
{
	use HybridRelations;
	
    protected $guarded = ['id']; 
	
	protected $collection = "reservering";
	
	protected $connection = "mongodb";
}
