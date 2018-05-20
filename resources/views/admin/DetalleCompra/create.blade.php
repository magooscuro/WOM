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
                        <h3 class="panel-title">Nuevo Compra</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-container">
                            <form method="POST" action="{{ route('detallecompra.store') }}"  role="form">
                                {{ csrf_field() }}
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="number" min="1" step="any" name="cantidad" id="cantidad" class="form-control input-sm" placeholder="Cantidad"/>
                                            <br>
                                            <select name="id_album" id="id_album" >
                                                <option>Seleccione Album</option>
                                                @foreach($albums as $albums)
                                                    <option value="{{ $albums->id }}">{{ $albums->nombre }}</option>
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            <select name="id_compra" id="id_compra">
                                                <option>Seleccione La compra</option>
                                                @foreach($compra as $compra)
                                                    <option value="{{ $compra->id }}">{{ $compra->id }}</option>
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Guardar" class="btn btn-success btn-block">
                                        <a href="{{ route('detallecompra.index') }}" class="btn btn-info btn-block" >Atrás</a>
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