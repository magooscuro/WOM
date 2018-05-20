<?php

namespace App\Http\Controllers;

use App\Compra;
use App\Cupon;
use App\Tipo_pago;
use App\User;
use Illuminate\Http\Request;

class CompraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $compras=Compra::orderBy('id','DESC')->paginate(5);
        return view('admin.Compra.index',compact('compras'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $users = User::all();
        $tcompras = Tipo_pago::all();
        $cupons = Cupon::all();
        return view('admin.Compra.create',compact('users','tcompras','cupons'));
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
        $this->validate($request,['fecha'=>'required', 'total'=>'required', 'id_tpago'=>'required', 'id_usuario'=>'required']);
        Compra::create($request->all());
        return redirect()->route('compra.index')->with('success','Registro creado satisfactoriamente');
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
        $compras = Compra::find($id);
        return view('admin.Compra.index',compact('compras'));
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
        $users = User::all();
        $tpagos = Tipo_pago::all();
        $cupons = Cupon::all();
        $compra=Compra::find($id);
        return view('admin.Compra.edit',compact('compra','tpagos','users','cupons'));
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
        $this->validate($request,['fecha'=>'required', 'total'=>'required', 'id_tpago'=>'required', 'id_usuario'=>'required']);
        Compra::find($id)->update($request->all());
        return redirect()->route('compra.index')->with('success','Registro actualizado satisfactoriamente');
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
        Compra::find($id)->delete();
        return redirect()->route('compra.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
