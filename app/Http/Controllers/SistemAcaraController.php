<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Yajra\Datatables\Html\Builder;
use Yajra\Datatables\Datatables;
use App\Acara;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;

class SistemAcaraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, Builder $htmlBuilder)
    {
        if ($request->ajax()) {
          $acaras = Acara::all();
          return Datatables::of($acaras)
              ->addColumn('action', function($acara) {
                return view('datatable._action', [
                  'model'             => $acara,
                  'form_url'          => route('sistem.acaras.destroy', $acara->id),
                  'confirm_message'   => 'Yakin mau menghapus ' . $acara->nama_acara . '?'
                ]);
          })->make(true);
        }

        $html = $htmlBuilder
          ->addColumn(['data' => 'tanggal', 'name'=>'tanggal', 'title'=>'Tanggal'])
          ->addColumn(['data' => 'nama_acara', 'name'=>'nama_acara', 'title'=>'Nama Acara'])
          ->addColumn(['data' => 'desc', 'name'=>'desc', 'title'=>'Desc'])
          ->addColumn(['data' => 'action', 'name'=>'action', 'title'=>'', 'orderable'=>false, 'searchable'=>false]);

        return view('acaras.index')->with(compact('html'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('acaras.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'tanggal'       => 'required',
            'nama_acara'    => 'required',
            'desc'          => 'required',
        ]);

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
            $destinationPath = public_path() . DIRECTORY_SEPARATOR . 'acara';

            $uploaded_gambar->move($destinationPath, $filename);

            // mengisi field gambar di acara dengan filename yang baru dibuat
            $acara->gambar = $filename;
        }

        $acara->save();

        Session::flash('flash_notification', [
          "level"=>"success",
          "message"=>"Berhasil menyimpan $acara->nama_acara"
        ]);

        return redirect()->route('sistem.acaras.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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

        Session::flash('flash_notification', [
          "level"=>"success",
          "message"=>"Berhasil dihapus"
        ]);

        return redirect()->route('sistem.acaras.index');
    }
}
