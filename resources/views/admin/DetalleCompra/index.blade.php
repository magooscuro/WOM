@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Compra</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('detallecompra.create') }}" class="btn btn-info" >Añadir Compra</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Cantidad</th>
                                <th>Album</th>
                                <th>Compra</th>
                                </thead>
                                <tbody>
                                @if($detallescompras->count())
                                    @foreach($detallescompras as $detallecomrpa)
                                        <tr>
                                            <td>{{$detallecomrpa->cantidad}}</td>
                                            <td>{{$detallecomrpa->album->nombre}}</td>
                                            <td>{{$detallecomrpa->id_compra}}</td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('DetalleCompraController@edit', $detallecomrpa->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('DetalleCompraController@destroy', $detallecomrpa->id)}}" method="post">
                                                    {{csrf_field()}}
                                                    <input name="_method" type="hidden" value="DELETE">

                                                    <button class="btn btn-danger btn-xs" type="submit"><span class="glyphicon glyphicon-trash"></span></button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                @else
                                    <tr>
                                        <td colspan="8">No hay registro !!</td>
                                    </tr>
                                @endif
                                </tbody>

                            </table>
                        </div>
                    </div>
                    {{ $detallescompras->links() }}
                </div>
            </div>
        </section>
    </div>

@stop