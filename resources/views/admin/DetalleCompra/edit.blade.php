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
                        <h3 class="panel-title">Editar Compra</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-container">
                            <form method="POST" action="{{ route('detallecompra.update',$detallecompra->id) }}"  role="form" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <input name="_method" type="hidden" value="PATCH">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="number" min="1" step="any" name="cantidad" id="cantidad" class="form-control input-sm" value="{{ $detallecompra->cantidad }}"/>
                                            <br>
                                            Tipo pago:
                                            <select name="id_album" id="id_album">
                                                <option value="" selected disabled hidden>Seleccione Tipo pago</option>
                                                @foreach($albums as $alum)
                                                    @if($detallecompra->album->id==$alum->id)
                                                        <option value="{{ $alum->id }}" selected>{{ $alum->nombre }}</option>
                                                    @else
                                                        <option value="{{ $alum->id }}" >{{ $alum->nombre }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            Usuario:
                                            <select name="id_compra" id="id_compra" >
                                                <option value="" selected disabled hidden>Seleccione Usuario</option>
                                                @foreach($compras as $compra)
                                                    @if($detallecompra->compra->id==$compra->id)
                                                        <option value="{{ $compra->id }}" selected>{{ $compra->id }}</option>
                                                    @else
                                                        <option value="{{ $compra->id }}">{{ $compra->id }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Actualizar" class="btn btn-success btn-block">
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