@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Usuarios</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('user.create') }}" class="btn btn-info" >Añadir User</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Nombre</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Email</th>

                                <th>Fecha Nacimiento</th>
                                <th>Direccion</th>
                                <th>Estado</th>
                                <th>Municipio</th>
                                <th>Colonia</th>
                                <th>Telefono</th>

                                <th>Editar</th>
                                <th>Eliminar</th>

                                </thead>
                                <tbody>
                                @if($users->count())
                                    @foreach($users as $user)
                                        <tr>
                                            <td>{{$user->name}}</td>
                                            <td>{{$user->apaterno}}</td>
                                            <td>{{$user->amaterno}}</td>
                                            <td>{{$user->email}}</td>

                                            <td>{{$user->fnacimiento}}</td>
                                            <td>{{$user->direccion}}</td>
                                            <td>{{$user->estado}}</td>

                                            <td>{{$user->municipio}}</td>
                                            <td>{{$user->colonia}}</td>
                                            <td>{{$user->telefono}}</td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('UserController@edit', $user->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('UserController@destroy', $user->id)}}" method="post">
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
                    {{ $users->links() }}
                </div>
            </div>
        </section>
    </div>

@stop