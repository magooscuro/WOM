<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    //
    protected $fillable = ['nombre','publicacion','precio', 'img', 'id_discografia','id_artista','id_genero'];

    public function discografia(){
        return $this->belongsTo(Discografia::class,'id_discografia');
    }

    public function artista(){
        return $this->belongsTo(Artista::class, 'id_artista');
    }

    public  function genero(){
        return $this->belongsTo(Genero::class, 'id_genero');
    }

}
