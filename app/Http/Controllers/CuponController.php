<?php

namespace App\Http\Controllers;

use App\Cupon;
use App\User;
use Illuminate\Http\Request;

class CuponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $cupons=Cupon::orderBy('id','DESC')->paginate(5);
        return view('admin.Cupon.index',compact('cupons'));
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
        return view('admin.Cupon.create',compact('users'));
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
        $this->validate($request,['codigo'=>'required', 'porcentaje'=>'required', 'vigencia'=>'required', 'id_usuario'=>'required']);
        Cupon::create($request->all());
        return redirect()->route('cupon.index')->with('success','Registro creado satisfactoriamente');
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
        $cupons = Cupon::find($id);
        return view('admin.Cupon.index',compact('cupons'));
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
        $cupon = Cupon::find($id);
        $users = User::all();
        return view('admin.Cupon.edit',compact('cupon','users'));
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
        $this->validate($request,['codigo'=>'required', 'porcentaje'=>'required', 'vigencia'=>'required', 'id_usuario'=>'required']);
        Cupon::find($id)->update($request->all());
        return redirect()->route('cupon.index')->with('success','Registro actualizado satisfactoriamente');
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
        Cupon::find($id)->delete();
        return redirect()->route('cupon.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
