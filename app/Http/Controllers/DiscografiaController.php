<?php

namespace App\Http\Controllers;

use App\Discografia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DiscografiaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $discografias=Discografia::orderBy('id','DESC')->paginate(5);
        return view('admin.Discografia.index',compact('discografias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.Discografia.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request,['nombre'=>'required', 'fundacion'=>'required', 'logo'=>'required|image']);
        $nombre = $request->file('logo')->store('public/Discografias');
        $disc=['nombre'=>$request->nombre,'fundacion'=>$request->fundacion,'logo'=>$nombre];
        Discografia::create($disc);
        return redirect()->route('discografia.index')->with('success','Registro creado satisfactoriamente');
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
        $discografias = Discografia::find($id);
        return view('admin.Discografia.index',compact('discografias'));
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
        $discografia = Discografia::find($id);
        return view('admin.Discografia.edit',compact('discografia'));
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
        $this->validate($request,['nombre'=>'required', 'fundacion'=>'required','logo'=>'image']);
        if($request->hasFile('logo')){
            Storage::delete(Discografia::find($id)->logo);
            $nombre = $request->file('logo')->store('public/Discografias');
            $disc=['nombre'=>$request->nombre,'fundacion'=>$request->fundacion,'logo'=>$nombre];
        }else{
            $disc=['nombre'=>$request->nombre,'fundacion'=>$request->fundacion];
        }
        Discografia::find($id)->update($disc);
        return redirect()->route('discografia.index')->with('success','Registro actualizado satisfactoriamente');
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
        Storage::delete(Discografia::find($id)->logo);
        Discografia::find($id)->delete();
        return redirect()->route('discografia.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
