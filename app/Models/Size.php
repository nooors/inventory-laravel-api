<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Size
 * 
 * @property int $id
 * @property string $name
 *
 * @package App\Models
 */
class Size extends Model
{
	protected $table = 'sizes';
	public $timestamps = false;

	protected $fillable = [
		'name'
	];
}
