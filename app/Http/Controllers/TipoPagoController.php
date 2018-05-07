<?php

namespace App\Http\Controllers;

use App\Tipo_pago;
use Illuminate\Http\Request;

class TipoPagoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $pagos=Tipo_pago::orderBy('id','DESC')->paginate(5);
        return view('admin.TipoPago.index',compact('pagos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.TipoPago.create');
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
        $this->validate($request,['tipo'=>'required']);
        Tipo_pago::create($request->all());
        return redirect()->route('tipopago.create')->with('success','Registro creado satisfacoriamente');

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
        $pagos=Tipo_pago::find($id);
        return view('admin.TipoPago.index',compact('pagos'));
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
        $pago=Tipo_pago::find($id);
        return view('admin.TipoPago.edit',compact('pago'));
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
        $this->validate($request,['tipo'=>'required']);
        Tipo_pago::find($id)->update($request->all());
        return redirect()->route('tipopago.index')->with('success','Registro actualizado satisfacoriamente');
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
        Tipo_pago::find($id)->delete();
        return redirect()->route('tipopago.index')->with('success','Registro eliminado satisfacoriamente');
    }
}
