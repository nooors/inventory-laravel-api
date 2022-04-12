<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Color
 * 
 * @property int $id
 * @property string $color
 * @property string|null $code
 * @property int|null $order
 * 
 * @property Collection|Garment[] $garments
 *
 * @package App\Models
 */
class Color extends Model
{
	protected $table = 'colors';
	public $timestamps = false;

	protected $casts = [
		'order' => 'int'
	];

	protected $fillable = [
		'color',
		'code',
		'order'
	];

	public function garments()
	{
		return $this->hasMany(Garment::class, 'id_color');
	}
}
