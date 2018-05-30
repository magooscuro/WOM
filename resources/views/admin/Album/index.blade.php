@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Albums</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('album.create') }}" class="btn btn-info" >Añadir Album</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Nombre</th>
                                <th>Fecha Publicacion</th>
                                <th>Precio</th>
                                <th>Imagen</th>
                                <th>discografia</th>
                                <th>Artista</th>
                                <th>Genero</th>
                                <th>Editar</th>
                                <th>Eliminar</th>

                                </thead>
                                <tbody>
                                @if($albums->count())
                                    @foreach($albums as $album)
                                        <tr>
                                            <td>{{$album->nombre}}</td>
                                            <td>{{$album->publicacion}}</td>
                                            <td>{{$album->precio}}</td>
                                            <td><img width="150px" src="{{ 'http://192.168.43.198:8000/storage/Albums/'.$album->img }}"></td>
                                            <td>{{$album->discografia->nombre}}</td>
                                            <td>{{$album->artista->nombre}}</td>
                                            <td>{{$album->genero->genero}}</td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('AlbumController@edit', $album->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('AlbumController@destroy', $album->id)}}" method="post">
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
                    {{ $albums->links() }}
                </div>
            </div>
        </section>
    </div>

@stop