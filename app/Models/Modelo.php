<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Modelo
 * 
 * @property int $id
 * @property int $id_marca
 * @property string $modelo
 * @property string|null $imagen
 * 
 * @property Mark $mark
 *
 * @package App\Models
 */
class Modelo extends Model
{
	protected $table = 'modelos';
	public $timestamps = false;

	protected $casts = [
		'id_marca' => 'int'
	];

	protected $fillable = [
		'id_marca',
		'modelo',
		'imagen'
	];

	public function mark()
	{
		return $this->belongsTo(Mark::class, 'id_marca');
	}
}
