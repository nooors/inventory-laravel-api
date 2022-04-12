<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Garment
 * 
 * @property int $id
 * @property int $id_category
 * @property int $id_family
 * @property int $id_size
 * @property int $id_color
 * @property int $id_suplier
 * @property int|null $id_mark
 * @property int $id_model
 * @property string|null $reference
 * @property int $quantity
 * @property string|null $image
 * 
 * @property Color $color
 *
 * @package App\Models
 */
class Garment extends Model
{
	protected $table = 'garments';
	public $timestamps = false;

	protected $casts = [
		'id_category' => 'int',
		'id_family' => 'int',
		'id_size' => 'int',
		'id_color' => 'int',
		'id_suplier' => 'int',
		'id_mark' => 'int',
		'id_model' => 'int',
		'quantity' => 'int'
	];

	protected $fillable = [
		'id_category',
		'id_family',
		'id_size',
		'id_color',
		'id_suplier',
		'id_mark',
		'id_model',
		'reference',
		'quantity',
		'image'
	];

	public function color()
	{
		return $this->belongsTo(Color::class, 'id_color');
	}
}
