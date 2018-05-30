<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class IdUserController extends Controller
{
    //
    public function iduser(){

        $iduser = DB::select('select * from idUser');
        return response()->json($iduser);
    }
}
