@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Reporte Semanal</h3></div>
                        <div class="pull-right">

                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Semana</th>
                                <th>Año</th>
                                <th>Total</th>



                                </thead>
                                <tbody>

                                    @foreach($reportes as $reporte)
                                        <tr>
                                            <td>{{$reporte->week}}</td>
                                            <td>{{$reporte->year}}</td>
                                            <td>{{$reporte->sum}}</td>
                                        </tr>
                                    @endforeach

                                </tbody>

                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </section>
        <section class="content">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Reporte Mensual</h3></div>
                        <div class="pull-right">

                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Mes</th>
                                <th>Año</th>
                                <th>Total</th>



                                </thead>
                                <tbody>

                                @foreach($reportesM as $reporte)
                                    <tr>
                                        <td>{{$reporte->month}}</td>
                                        <td>{{$reporte->year}}</td>
                                        <td>{{$reporte->sum}}</td>
                                    </tr>
                                @endforeach

                                </tbody>

                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </section>
        <section class="content">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Reporte Anual</h3></div>
                        <div class="pull-right">

                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>

                                <th>Año</th>
                                <th>Total</th>



                                </thead>
                                <tbody>

                                @foreach($reportesA as $reporte)
                                    <tr>

                                        <td>{{$reporte->year}}</td>
                                        <td>{{$reporte->total}}</td>
                                    </tr>
                                @endforeach

                                </tbody>

                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </section>




@stop

