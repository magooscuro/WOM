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
                        <h3 class="panel-title">Nuevo Album</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-container">
                            <form method="POST" action="{{ route('album.store') }}"  role="form" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="nombre" id="nombre" class="form-control input-sm" placeholder="Nombre del Album">
                                            <br>
                                            <input type="date" name="publicacion" id="publicacion" class="form-control input-sm" placeholder="Fecha de publicacion">
                                            <br>
                                            <input type="number" min="1" step="any" name="precio" id="precio" class="form-control input-sm" placeholder="Precio"/>
                                            Imagen:<input type="file" name="img" id="img" placeholder=>
                                            <br>
                                            <select name="id_discografia" id="id_discografia" >
                                                <option>Seleccione Discografia</option>
                                                @foreach($discografias as $discografia)
                                                    <option value="{{ $discografia->id }}">{{ $discografia->nombre }}</option>
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            <select name="id_artista" id="id_artista">
                                                <option>Seleccione Artista</option>
                                                @foreach($artistas as $artista)
                                                    <option value="{{ $artista->id }}">{{ $artista->nombre }}</option>
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            <select name="id_genero" id="id_genero">
                                                <option>Seleccione Genero</option>
                                                @foreach($generos as $genero)
                                                    <option value="{{ $genero->id }}">{{ $genero->genero }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Guardar" class="btn btn-success btn-block">
                                        <a href="{{ route('album.index') }}" class="btn btn-info btn-block" >Atrás</a>
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