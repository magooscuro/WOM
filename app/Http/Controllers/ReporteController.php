<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReporteController extends Controller
{
    //
    public function index()
    {
        //
        $reportes = DB::select('select * from reporteSemanal');
        $reportesM = DB::select('select * from reporteMensual');
        $reportesA = DB::select('select * from reporteAnual');





        return view('admin.Reporte.index',compact('reportes','reportesM','reportesA'));


    }


}
