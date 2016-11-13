<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Tambah Acara
                        </div>
                        <div class="panel-body">
                            <form action="{{ route('api.acara.update', $acara->id) }}" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="_method" value="put" />
                                <div class="form-group">
                                    <label>Tanggal</label>
                                    <input type="date" name="tanggal" class="form-control" value="{{ $acara->tanggal }}">
                                </div>
                                <div class="form-group">
                                    <label>Nama Acara</label>
                                    <input type="text" name="nama_acara" class="form-control" value="{{ $acara->nama_acara }}">
                                </div>
                                <div class="form-group">
                                    <label>Desc</label>
                                    <input type="text" name="desc" class="form-control" value="{{ $acara->desc }}">
                                </div>
                                <div class="form-group">
                                    <label>Gambar</label>
                                    <input type="file" name="gambar" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="submit" class="btn btn-primary" value="Simpan">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
