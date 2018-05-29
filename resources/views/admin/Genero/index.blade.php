@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12"">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Generos</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('genero.create') }}" class="btn btn-info" >Añadir Genero</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Genero</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                                </thead>
                                <tbody>
                                @if($generos->count())
                                    @foreach($generos as $genero)
                                        <tr>
                                            <td>{{$genero->genero}}</td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('GeneroController@edit', $genero->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('GeneroController@destroy', $genero->id)}}" method="post">
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
                    {{ $generos->links() }}
                </div>
            </div>
        </section>
    </div>

@stop