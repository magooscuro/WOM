@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12">
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
                            <form method="POST" action="{{ route('compra.update',$compra->id) }}"  role="form" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <input name="_method" type="hidden" value="PATCH">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="date" name="fecha" id="fecha" class="form-control input-sm" value="{{$compra->fecha}}">
                                            <br>
                                            <input type="number" min="1" step="any" name="total" id="total" class="form-control input-sm" value="{{ $compra->total }}"/>
                                            <br>
                                            Usuario:
                                            <select name="id_usuario" id="id_usuario" >
                                                <option value="" selected disabled hidden>Seleccione Usuario</option>
                                                @foreach($users as $user)
                                                    @if($compra->usuario->id==$user->id)
                                                        <option value="{{ $user->id }}" selected>{{ $user->name }}</option>
                                                    @else
                                                        <option value="{{ $user->id }}">{{ $user->name }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            Tipo pago:
                                            <select name="id_tpago" id="id_tpago">
                                                <option value="" selected disabled hidden>Seleccione Tipo pago</option>
                                                @foreach($tpagos as $tpago)
                                                    @if($compra->tipo_pago->id==$tpago->id)
                                                        <option value="{{ $tpago->id }}" selected>{{ $tpago->tipo }}</option>
                                                    @else
                                                        <option value="{{ $tpago->id }}" >{{ $tpago->tipo }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            Compra:
                                            <select name="id_cupon" id="id_cupon">
                                                <option value="" selected disabled hidden>Seleccione Cupon</option>
                                                @foreach($cupons as $cupon)
                                                    @if($compra->cupon->id==$cupon->id)
                                                        <option value="{{ $cupon->id }}" selected>{{ $cupon->codigo }}</option>
                                                    @else
                                                        <option value="{{ $cupon->id }}" >{{ $cupon->codigo }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Actualizar" class="btn btn-success btn-block">
                                        <a href="{{ route('compra.index') }}" class="btn btn-info btn-block" >Atrás</a>
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