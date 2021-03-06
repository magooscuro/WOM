@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-8 col-md-offset-2">
                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <strong>Error!</strong> Revise los campos obligatorios.<br><br>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                @if(Session::has('success'))
                    <div class="alert alert-info">
                        {{Session::get('success')}}
                    </div>
                @endif

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Editar Usuario</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-container">
                            <form method="POST" action="{{ route('user.update',$user->id) }}"  role="form">
                                {{ csrf_field() }}
                                <input name="_method" type="hidden" value="PATCH">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">

                                            <input type="text" name="name" id="name" class="form-control input-sm" value="{{$user->name}}">
                                            <input type="text" name="apaterno" id="apaterno" class="form-control input-sm" placeholder="Apellido paterno " value="{{$user->apaterno}}">
                |                            <input type="text" name="amaterno" id="amaterno" class="form-control input-sm" placeholder="Apellido materno "value="{{$user->amaterno}}">
                                            <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email" value="{{$user->email}}">
                                            <input type="date" name="fnacimiento" id="fnacimiento" class="form-control input-sm"/>
                                            <input type="text" name="direccion" id="direccion" class="form-control input-sm" placeholder="Direccion" value="{{$user->direccion}}">
                                            <input type="text" name="estado" id="estado" class="form-control input-sm" placeholder="Estado" value="{{$user->estado}}">
                                            <input type="text" name="municipio" id="municipio" class="form-control input-sm" placeholder="Municipio" value="{{$user->municipio}}">
                                            <input type="text" name="colonia" id="colonia" class="form-control input-sm" placeholder="Colonia" value="{{$user->colonia}}">
                                            <input type="text" name="telefono" id="telefono" class="form-control input-sm" placeholder="Telefono" value="{{$user->telefono}}">


                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Actualizar" class="btn btn-success btn-block">
                                        <a href="{{ route('user.index') }}" class="btn btn-info btn-block" >Atrás</a>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </div>
@stop