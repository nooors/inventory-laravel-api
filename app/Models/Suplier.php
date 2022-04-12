<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Suplier
 * 
 * @property int $id
 * @property string $name
 * @property string|null $email
 * @property int|null $telephone
 * @property string|null $contact
 * @property string|null $image
 *
 * @package App\Models
 */
class Suplier extends Model
{
	protected $table = 'supliers';
	public $timestamps = false;

	protected $casts = [
		'telephone' => 'int'
	];

	protected $fillable = [
		'name',
		'email',
		'telephone',
		'contact',
		'image'
	];
}
