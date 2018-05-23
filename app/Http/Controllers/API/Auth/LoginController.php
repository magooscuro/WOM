<?php

namespace App\Http\Controllers\API\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Laravel\Passport\Client;

class LoginController extends Controller
{
    //
    use issueTokenTrait;

    private $client;

    public function __construct(){
        $this->client = Client::find(2);
    }

    public function login(Request $request){


        $this->validate($request,[
            'username' => 'required',
            'password' => 'required',
        ]);

        return $this->issueToken($request,'password');

    }

    public function refresh(Request $request){

        $this->validate($request,[
            'refresh_token' => 'required'
        ]);


        return $this->issueToken($request,'refresh_token');

    }

    public function logout(Request $request){

        $accessToken = Auth::user()->token();

        DB::table('oauth_refresh_tokens')
            ->where('access_token_id',$accessToken->id)
            ->update(['revoked'=>'1']);

        $accessToken->revoke();

        return response()->json([],204);

    }
}
