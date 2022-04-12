<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Mark
 * 
 * @property int $id
 * @property string|null $marc
 * @property string|null $image
 * 
 * @property Collection|Modelo[] $modelos
 *
 * @package App\Models
 */
class Mark extends Model
{
	protected $table = 'marks';
	public $timestamps = false;

	protected $fillable = [
		'marc',
		'image'
	];

	public function modelos()
	{
		return $this->hasMany(Modelo::class, 'id_marca');
	}
}
