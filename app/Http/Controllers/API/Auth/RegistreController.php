<?php

namespace App\Http\Controllers\API\Auth;

use App\Role;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Route;
use Laravel\Passport\Client;
use function Sodium\add;

class RegistreController extends Controller
{
    //
    use issueTokenTrait;

    private $client;

    public function __construct(){
        $this->client = Client::find(2);
    }

    public function  registro(Request $request){

        $this->validate($request,[
            'name'=>'required',
            'email'=>'required|email|unique:users,email',
            'password'=>'required|min:6'
        ]);

        $user = User::create([
            'name'=>request('name'),
            'email'=>request('email'),
            'password'=>bcrypt(request('password'))
        ]);

        $user
            ->roles()
            ->attach(Role::where('name', 'user')->first());


        return $this->issueToken($request,'password');

    }
}
