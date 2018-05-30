<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carritor extends Model
{
    //
    protected $table = 'carrito';
    protected $fillable =  ['id_album','id_user','cantidad'];
}
