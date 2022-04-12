<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class User
 * 
 * @property int $id
 * @property string $name
 * @property string $last_name
 * @property string|null $email
 * @property string $rol
 * @property Carbon|null $date
 * @property string|null $password
 *
 * @package App\Models
 */
class User extends Model
{
	protected $table = 'users';
	public $timestamps = false;

	protected $dates = [
		'date'
	];

	protected $hidden = [
		'password'
	];

	protected $fillable = [
		'name',
		'last_name',
		'email',
		'rol',
		'date',
		'password'
	];
}
