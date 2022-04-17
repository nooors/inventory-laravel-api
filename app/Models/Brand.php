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
 * @property string|null $name
 * @property string|null $image
 * 
 * @property Collection|Modelo[] $modelos
 *
 * @package App\Models
 */
class Brand extends Model
{
	protected $table = 'brands';
	public $timestamps = false;

	protected $fillable = [
		'name',
		'image'
	];

	public function modelos()
	{
		return $this->hasMany(Garment::class, 'id_brand');
	}
}
