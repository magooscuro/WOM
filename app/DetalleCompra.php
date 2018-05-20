<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetalleCompra extends Model
{
    //
    protected $table='detallecompra';

    protected $fillable = ['cantidad', 'id_album', 'id_compra'];

    public  function album(){
        return $this->belongsTo(Album::class, 'id_album');
    }

    public  function compra(){
        return $this->belongsTo(Compra::class, 'id_compra');
    }

}
