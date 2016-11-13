<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Registrasi;

class RegistrasisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $registrasi = Registrasi::all();
        return response()->json($registrasi);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $registrasi                 = new Registrasi;
        $registrasi->nama           = $request->input('nama');
        $registrasi->email          = $request->input('email');
        $registrasi->password       = bcrypt($request->input('password'));
        $registrasi->jenis_member   = 'member';
        $registrasi->no_telp        = $request->input('no_telp');
        $registrasi->imei           = $request->input('imei');
        $success = $registrasi->save();

        if(!$success)
    	{
           	return response()->json("error saving",500);
    	}

        return response()->json(["success" => true]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($registrasi_id)
    {
        $registrasi = Registrasi::findOrFail($registrasi_id);

        return response()->json($registrasi);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $registrasi_id)
    {
        $registrasi                 = Registrasi::findOrFail($registrasi_id);
        $registrasi->nama           = $request->input('nama');
        $registrasi->email          = $request->input('email');
        $registrasi->password       = bcrypt($request->input('password'));
        $registrasi->jenis_member   = 'member';
        $registrasi->no_telp        = $request->input('no_telp');
        $registrasi->imei           = $request->input('imei');
        $success = $registrasi->save();

        if(!$success)
    	{
           	return response()->json("error updating",500);
    	}

        return response()->json(["success" => true]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($registrasi_id)
    {
        $registrasi = Registrasi::find($registrasi_id);
    	if(is_null($registrasi))
    	{
    		return response()->json("not found",404);
    	}

    	$success = $registrasi->delete();

    	if(!$success)
    	{
    		return response()->json("error deleting",500);
    	}

    	return response()->json("success",200);
    }
}
