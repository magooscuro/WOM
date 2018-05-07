<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAlbumsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('albums', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre');
            $table->date('publicacion');
            $table->double('precio',10,2);
            $table->text('img');
            $table->integer('id_discografia')->unsigned();
            $table->foreign('id_discografia')->references('id')->on('discografias');
            $table->integer('id_artista')->unsigned();
            $table->foreign('id_artista')->references('id')->on('artistas');
            $table->integer('id_genero')->unsigned();
            $table->foreign('id_genero')->references('id')->on('generos');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('albums');
    }
}
