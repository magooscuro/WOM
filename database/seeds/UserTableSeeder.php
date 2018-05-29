<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Role;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role_user = Role::where('name', 'user')->first();
        $role_admin = Role::where('name', 'admin')->first();
        $user = new User();
        $user->name = 'User';
        $user->email = 'user@example.com';
        $user->password = bcrypt('secret');
        $user->apaterno = 'UserPaterno';
        $user->amaterno = 'UserMaterno';
        $user->fnacimiento = '10/10/2015';
        $user->direccion = 'direccion';
        $user->estado = 'estado';
        $user->municipio = 'municipio';
        $user->colonia = 'colonia';
        $user->telefono = '417417';


        $user->save();

        $user->roles()->attach($role_user);
        $user = new User();
        $user->name = 'Admin';
        $user->email = 'admin@example.com';
        $user->password = bcrypt('secret');
        $user->save();
        $user->roles()->attach($role_admin);
        $user->apaterno = 'UserPaterno';
        $user->amaterno = 'UserMaterno';
        $user->fnacimiento = '10/10/2015';
        $user->direccion = 'direccion';
        $user->estado = 'estado';
        $user->municipio = 'municipio';
        $user->colonia = 'colonia';
        $user->telefono = '417417';

        $user->save();
    }
}
