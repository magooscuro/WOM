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
                        <h3 class="panel-title">Nuevo Cupon</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-container">
                            <form method="POST" action="{{ route('cupon.store') }}"  role="form">
                                {{ csrf_field() }}
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="codigo" id="codigo" class="form-control input-sm" placeholder="Codigo del Cupon">
                                            <input type="text" name="porcentaje" id="porcentaje" class="form-control input-sm" placeholder="Porcentaje del cupon">
                                            Vigencia:
                                            <select name="vigencia" id="vigencia">
                                                <option value="1">Si</option>
                                                <option value="0">No</option>
                                            </select>
                                            <br>
                                            <br>
                                            Usuario:
                                            <select name="id_usuario" id="id_usuario">
                                                <option>Seleccionar usuario</option>
                                            @foreach($users as $user)
                                                <option value="{{$user->id}}">{{ $user->name}}</option>
                                            @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Guardar" class="btn btn-success btn-block">
                                        <a href="{{ route('cupon.index') }}" class="btn btn-info btn-block" >Atrás</a>
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