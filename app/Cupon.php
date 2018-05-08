<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cupon extends Model
{
    //
    protected $fillable = ['codigo','porcentaje','vigencia','id_usuario'];

    public  function usuario(){
        return $this->belongsTo(User::class, 'id_usuario');
    }
}
