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
                        <h3 class="panel-title">Nuevo Genero</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-container">
                            <form method="POST" action="{{ route('album.update',$album->id) }}"  role="form" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <input name="_method" type="hidden" value="PATCH">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="nombre" id="nombre" class="form-control input-sm" value="{{ $album->nombre }}">
                                            <br>
                                            <input type="date" name="publicacion" id="publicacion" class="form-control input-sm" value="{{$album->publicacion}}">
                                            <br>
                                            <input type="number" min="1" step="any" name="precio" id="precio" class="form-control input-sm" value="{{ $album->precio }}"/>
                                            <img width="150px" src="{{ Storage::url($album->img) }}">
                                            <br>
                                            Imagen:<input type="file" name="img" id="img" value=>
                                            <br>
                                            Discografia:
                                            <select name="id_discografia" id="id_discografia" value="{{$album->discografia->id}}">
                                                <option value="" selected disabled hidden>Seleccione Discografia</option>
                                                @foreach($discografias as $discografia)
                                                    @if($album->discografia->id==$discografia->id)
                                                        <option value="{{ $discografia->id }}" selected>{{ $discografia->nombre }}</option>
                                                    @else
                                                        <option value="{{ $discografia->id }}">{{ $discografia->nombre }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            Artista:
                                            <select name="id_artista" id="id_artista">
                                                <option value="" selected disabled hidden>Seleccione Artista</option>
                                                @foreach($artistas as $artista)
                                                    @if($album->artista->id==$artista->id)
                                                        <option value="{{ $artista->id }}" selected>{{ $artista->nombre }}</option>
                                                    @else
                                                        <option value="{{ $artista->id }}" >{{ $artista->nombre }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            <br>
                                            <br>
                                            Genero:
                                            <select name="id_genero" id="id_genero">
                                                <option value="" selected disabled hidden>Seleccione Genero</option>
                                                @foreach($generos as $genero)
                                                    @if($album->genero->id==$genero->id)
                                                        <option value="{{ $genero->id }}" selected>{{ $genero->genero }}</option>
                                                    @else
                                                        <option value="{{ $genero->id }}" >{{ $genero->genero }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <input type="submit"  value="Actualizar" class="btn btn-success btn-block">
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