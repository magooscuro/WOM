<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Compra extends Model
{
    //
    protected $fillable = ['total','fecha','id_tpago','id_usuario','id_cupon'];

        public  function usuario(){
        return $this->belongsTo(User::class, 'id_usuario');
    }

    public  function tipo_pago(){
        return $this->belongsTo(Tipo_pago::class, 'id_tpago');
    }

    public  function cupon(){
        return $this->belongsTo(Cupon::class, 'id_cupon');
    }
}
