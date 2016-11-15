<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Yajra\Datatables\Html\Builder;
use Yajra\Datatables\Datatables;
use App\Registrasi;
use App\Acara;

class SistemController extends Controller
{
    public function index()
    {
        return view('dashboard.index');
    }

    public function getMembers(Request $request, Builder $htmlBuilder)
    {
        if ($request->ajax()) {
          $members = Registrasi::where('jenis_member', 'member');
          return Datatables::of($members)->make(true);
        }

        $html = $htmlBuilder
          ->addColumn(['data' => 'nama', 'name'=>'nama', 'title'=>'Nama'])
          ->addColumn(['data' => 'email', 'name'=>'email', 'title'=>'Email'])
          ->addColumn(['data' => 'no_telp', 'name'=>'no_telp', 'title'=>'No Telp'])
          ->addColumn(['data' => 'imei', 'name'=>'imei', 'title'=>'Imei']);

        return view('members.index')->with(compact('html'));
    }
    
}
