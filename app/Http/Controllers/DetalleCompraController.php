<?php

namespace App\Http\Controllers;

use App\Album;
use App\Compra;
use App\DetalleCompra;
use Illuminate\Http\Request;

class DetalleCompraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $detallescompras=DetalleCompra::orderBy('id_compra','DESC')->paginate(5);
        return view('admin.DetalleCompra.index',compact('detallescompras'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $albums = Album::all();
        $compra = Compra::all();
        return view('admin.DetalleCompra.create',compact('users','albums','compra'));
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
        $this->validate($request,['cantidad'=>'required', 'id_album'=>'required', 'id_compra'=>'required']);
        DetalleCompra::create($request->all());
        return redirect()->route('detallecompra.index')->with('success','Registro creado satisfactoriamente');
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
        $detallecomrpas = DetalleCompra::find($id);
        return view('admin.DetalleCompra.index',compact('detallecomrpas'));
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
        $albums = Album::all();
        $compras = Compra::all();
        $detallecompra=DetalleCompra::find($id);
        return view('admin.DetalleCompra.edit',compact('detallecompra','albums','compras'));
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
        $this->validate($request,['cantidad'=>'required', 'id_album'=>'required', 'id_compra'=>'required']);
        DetalleCompra::find($id)->update($request->all());
        return redirect()->route('detallecompra.index')->with('success','Registro actualizado satisfactoriamente');
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
        DetalleCompra::find($id)->delete();
        return redirect()->route('detallecompra.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
