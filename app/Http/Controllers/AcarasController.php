<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Acara;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\File;

class AcarasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $acara = Acara::all();
        return response()->json($acara);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $faker                  = Faker::create();
        $acara                  = new Acara;
        $acara->tanggal         = $request->input('tanggal');
        $acara->nama_acara      = $request->input('nama_acara');
        $acara->desc            = $request->input('desc');
        $acara->barcode         = $faker->ean13;

        // isi field gambar jika ada gambar yang diupload
        if ($request->hasFile('gambar')) {
            // Mengambil file yang diupload
            $uploaded_gambar = $request->file('gambar');

            // mengambil extension file
            $extension = $uploaded_gambar->getClientOriginalExtension();

            // membuat nama file random berikut extension
            $filename = md5(time()) . '.' . $extension;

            // menyimpan gambar ke folder public/acara
            $destinationPath = 'acara';

            $uploaded_gambar->move($destinationPath, $filename);

            // mengisi field gambar di acara dengan filename yang baru dibuat
            $acara->gambar = $filename;
        }

        $success = $acara->save();

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
    public function show($acara_id)
    {
        $acara = Acara::findOrFail($acara_id);

        return response()->json($acara);
    }

    public function edit($acara_id)
    {
        $acara = Acara::findOrFail($acara_id);
        return view('acara_tambah')->with(compact('acara'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $acara_id)
    {
        $faker                  = Faker::create();
        $acara                  = Acara::findOrFail($acara_id);
        $acara->tanggal         = $request->input('tanggal');
        $acara->nama_acara      = $request->input('nama_acara');
        $acara->desc            = $request->input('desc');
        $acara->barcode         = $faker->ean13;

        if ($request->hasFile('gambar')) {
            // mengambil gambar yang diupload berikut ekstensinya
            $filename = null;
            $uploaded_gambar = $request->file('gambar');
            $extension = $uploaded_gambar->getClientOriginalExtension();

            // membuat nama file random dengan extension
            $filename = md5(time()) . '.' . $extension;
            $destinationPath = 'acara';

            // memindahkan file ke folder public/acara
            $uploaded_gambar->move($destinationPath, $filename);

            // hapus gambar lama, jika ada
            if ($acara->gambar) {
                $old_gambar = $acara->gambar;
                $filepath = 'acara' . '/' . $acara->gambar;

                try {
                    File::delete($filepath);
                } catch (FileNotFoundException $e) {
                    // File sudah dihapus/tidak ada
                }
            }

            // ganti field gambar dengan gambar yang baru
            $acara->gambar = $filename;
        }

        $success = $acara->save();

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
    public function destroy($acara_id)
    {
        $acara = Acara::findOrFail($acara_id);
        $gambar = $acara->gambar;
        if(is_null($acara))
    	{
    		return response()->json("not found",404);
    	}

    	$success = $acara->delete();
        // hapus gambar lama, jika ada
        if ($gambar) {
          $old_cover = $acara->gambar;
          $filepath = 'acara/' . $acara->gambar;

          try {
            File::delete($filepath);
          } catch (FileNotFoundException $e) {
            // File sudah dihapus/tidak ada
          }
        }

    	if(!$success)
    	{
    		return response()->json("error deleting",500);
    	}

    	return response()->json("success",200);
    }
}
