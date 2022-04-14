<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class BrandModel
 * 
 * @property int $id
 * @property int $id_brand
 * @property string $model
 * @property string|null $image
 * 
 * @property Brand $brand
 *
 * @package App\Models
 */
class BrandModel extends Model
{
	protected $table = 'brand_models';
	public $timestamps = false;

	protected $casts = [
		'id' => 'int'
	];

	protected $fillable = [

		'brand',
		'image'
	];

	public function brandModel()
	{
		return $this->hasMany(Garment::class, 'id_brand');
	}
}
