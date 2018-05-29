@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Artistas</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('artista.create') }}" class="btn btn-info" >Añadir Artista</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Artistas</th>
                                <th>Origen</th>
                                <th>Inicio</th>
                                <th>Editar</th>
                                <th>Eliminar</th>

                                </thead>
                                <tbody>
                                @if($artistas->count())
                                    @foreach($artistas as $artista)
                                        <tr>
                                            <td>{{$artista->nombre}}</td>
                                            <td>{{$artista->origen}}</td>
                                            <td>{{$artista->inicio}}</td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('ArtistaController@edit', $artista->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('ArtistaController@destroy', $artista->id)}}" method="post">
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
                    {{ $artistas->links() }}
                </div>
            </div>
        </section>
    </div>

@stop