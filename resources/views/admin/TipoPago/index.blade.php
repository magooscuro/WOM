@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Tipos de Pago</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('tipopago.create') }}" class="btn btn-info" >Añadir Tipo de pago</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Tipo</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                                </thead>
                                <tbody>
                                @if($pagos->count())
                                    @foreach($pagos as $pago)
                                        <tr>
                                            <td>{{$pago->tipo}}</td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('TipoPagoController@edit', $pago->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('TipoPagoController@destroy', $pago->id)}}" method="post">
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
                    {{ $pagos->links() }}
                </div>
            </div>
        </section>
    </div>

@stop