@extends('admin.layout')
@section('content')
    <div class="row">
        <section class="content">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pull-left"><h3>Lista Discografias</h3></div>
                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="{{ route('discografia.create') }}" class="btn btn-info" >Añadir Discografia</a>
                            </div>
                        </div>
                        <div class="table-container">
                            <table id="mytable" class="table table-bordred table-striped">
                                <thead>
                                <th>Discografias</th>
                                <th>Fundacion</th>
                                <th>Logo</th>
                                <th>Editar</th>
                                <th>Eliminar</th>

                                </thead>
                                <tbody>
                                @if($discografias->count())
                                    @foreach($discografias as $discografia)
                                        <tr>
                                            <td>{{$discografia->nombre}}</td>
                                            <td>{{$discografia->fundacion}}</td>
                                            <td><img width="150px" src="{{ Storage::url($discografia->logo) }}"></td>

                                            <td><a class="btn btn-primary btn-xs" href="{{action('DiscografiaController@edit', $discografia->id)}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                                            <td>
                                                <form action="{{action('DiscografiaController@destroy', $discografia->id)}}" method="post">
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
                    {{ $discografias->links() }}
                </div>
            </div>
        </section>
    </div>

@stop