<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Registrasi;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function doLogin(Request $request)
    {
        $imei           = $request->input('imei');
        $password       = $request->input('password');

        $checkImei      = Registrasi::where('imei', $imei)
                            ->first();

        $hashPassword   = $checkImei['password'];
        $checkHash      = Hash::check($password, $hashPassword);
        $jenisMember    = $checkImei['jenis_member'];

        if($checkImei && $checkHash === true) {
            return response()->json(['success' => true, 'jenis_member' => $jenisMember]);
        }
    }

    public function doLogout()
    {
        return response()->json(['success' => true]);
    }
}
