@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Cupons</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('cupon.create') }}" class="btn btn-info" >Añadir Cupon</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Codigo</th>
                                <th>Porcentaje</th>
                                <th>Vigencia</th>
                                <th>Usuario</th>
                                <th>Editar</th>
                                <th>Eliminar</th>

                                </thead>
                                <tbody>
                                @if($cupons->count())
                                    @foreach($cupons as $cupon)
                                        <tr>
                                            <td>{{$cupon->codigo}}</td>
                                            <td>{{$cupon->porcentaje}}</td>
                                            <td>{{$cupon->vigencia}}</td>
                                            <td>{{$cupon->usuario->name}}</td>
                                            <td><a class="btn btn-primary btn-xs" href="{{action('CuponController@edit', $cupon->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('CuponController@destroy', $cupon->id)}}" method="post">
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
                    {{ $cupons->links() }}
                </div>
            </div>
        </section>
    </div>

@stop