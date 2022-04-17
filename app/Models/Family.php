<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Family
 * 
 * @property int $id
 * @property string $name
 * @property string|null $image
 *
 * @package App\Models
 */
class Family extends Model
{
	protected $table = 'families';
	public $timestamps = false;

	protected $fillable = [
		'name',
		'image'
	];
}
