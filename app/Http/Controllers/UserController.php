<?php

namespace App\Http\Controllers;

use App\Role;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $users=User::orderBy('id','DESC')->paginate(5);
        return view('admin.User.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.User.create');
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




        $this->validate($request,['name'=>'required', 'apaterno'=>'required', 'amaterno'=>'required', 'email'=>'required', 'password'=>'required', 'fnacimiento'=>'required', 'direccion'=>'required', 'estado'=>'required', 'municipio'=>'required', 'colonia'=>'required', 'telefono'=>'required']);
        $user =User::create([
            'name'=>request('name'),
            'email'=>request('email'),
            'password'=>bcrypt(request('password')),
            'apaterno'=>request('apaterno'),
            'amaterno'=>request('amaterno'),
            'fnacimiento'=>request('fnacimiento'),
            'direccion'=>request('direccion'),
            'estado'=>request('estado'),
            'municipio'=>request('municipio'),
            'colonia'=>request('colonia'),
            'telefono'=>request('telefono')
            //dedededed



        ]);
        $user
            ->roles()
            ->attach(Role::where('name', 'user')->first());
        return redirect()->route('user.index')->with('success','Registro creado satisfactoriamente');

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
        $users = Users::find($id);
        return view('admin.User.index',compact('users'));

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
        $user = User::find($id);
        return view('admin.User.edit',compact('user'));

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
        $this->validate($request,['name'=>'required', 'apaterno'=>'required', 'amaterno'=>'required', 'email'=>'required', 'password', 'fnacimiento'=>'required', 'direccion'=>'required', 'estado'=>'required', 'municipio'=>'required', 'colonia'=>'required', 'telefono'=>'required']);

        User::find($id)->update($request->all());
        return redirect()->route('user.index')->with('success','Registro actualizado satisfactoriamente');

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
        User::find($id)->delete();
        return redirect()->route('user.index')->with('success','Registro eliminado satisfactoriamente');

    }
}
