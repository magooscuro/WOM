<?php

namespace App\Http\Controllers;

use App\Album;
use App\Artista;
use App\Discografia;
use App\Genero;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AlbumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $albums=Album::orderBy('id','DESC')->paginate(5);
        return view('admin.Album.index',compact('albums'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $discografias = Discografia::all();
        $artistas = Artista::all();
        $generos = Genero::all();
        return view('admin.Album.create', compact('discografias','artistas','generos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request,['nombre'=>'required', 'publicacion'=>'required', 'precio'=>'required', 'img'=>'required|image', 'id_discografia'=>'required', 'id_artista'=>'required', 'id_genero'=>'required']);
        $nombre = $request->file('img')->store('public/Albums');
        $album = ['nombre'=>$request->nombre, 'publicacion'=>$request->publicacion, 'precio'=>$request->precio, 'img'=>$nombre, 'id_discografia'=>$request->id_discografia, 'id_artista'=>$request->id_artista, 'id_genero'=>$request->id_genero];
        Album::create($album);
        return redirect()->route('album.index')->with('success','Registro creado satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $albums = Album::find($id);
        return view('admin.Album.index',compact('albums'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $album = Album::find($id);
        $discografias = Discografia::all();
        $artistas = Artista::all();
        $generos = Genero::all();
        return view('admin.Album.edit',compact('album','discografias','artistas','generos'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $this->validate($request,['nombre'=>'required', 'publicacion'=>'required', 'precio'=>'required', 'img'=>'image', 'id_discografia'=>'required', 'id_artista'=>'required', 'id_genero'=>'required']);
        if($request->hasFile('img')){
            Storage::delete(Album::find($id)->img);
            $nombre = $request->file('img')->store('public/Albums');
            $album = ['nombre'=>$request->nombre, 'publicacion'=>$request->publicacion, 'precio'=>$request->precio, 'img'=>$nombre, 'id_discografia'=>$request->id_discografia, 'id_artista'=>$request->id_artista, 'id_genero'=>$request->id_genero];
        }else{
            $album = ['nombre'=>$request->nombre, 'publicacion'=>$request->publicacion, 'precio'=>$request->precio, 'id_discografia'=>$request->id_discografia, 'id_artista'=>$request->id_artista, 'id_genero'=>$request->id_genero];
            
        }
        Album::find($id)->update($album);
        return redirect()->route('album.index')->with('success','Registro actualizado satisfactoriamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        Storage::delete(Album::find($id)->img);
        Album::find($id)->delete();
        return redirect()->route('album.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
