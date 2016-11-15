<div class="form-group{{ $errors->has('tanggal') ? ' has-error' : '' }}">
  {!! Form::label('tanggal', 'Tanggal Acara', ['class'=>'col-md-2 col-md-offset-3 control-label']) !!}
  <div class="col-md-4">
    {!! Form::date('tanggal', null, ['class'=>'form-control', 'placeholder' => 'Tanggal Acara']) !!}
    {!! $errors->first('tanggal', '<p class="help-block">:message</p>') !!}
  </div>
</div>

<div class="form-group{{ $errors->has('nama_acara') ? ' has-error' : '' }}">
  {!! Form::label('nama_acara', 'Nama Acara', ['class'=>'col-md-2 col-md-offset-3 control-label']) !!}
  <div class="col-md-4">
    {!! Form::text('nama_acara', null, ['class'=>'form-control', 'placeholder' => 'Nama Acara']) !!}
    {!! $errors->first('nama_acara', '<p class="help-block">:message</p>') !!}
  </div>
</div>

<div class="form-group{{ $errors->has('desc') ? ' has-error' : '' }}">
  {!! Form::label('desc', 'Deskripsi', ['class'=>'col-md-2 col-md-offset-3 control-label']) !!}
  <div class="col-md-4">
    {!! Form::textarea('desc', null, ['class'=>'form-control', 'placeholder' => 'Deskripsi', 'rows' => '3']) !!}
    {!! $errors->first('desc', '<p class="help-block">:message</p>') !!}
  </div>
</div>

<!-- <div class="form-group{{ $errors->has('gambar') ? ' has-error' : '' }}">
  {!! Form::label('gambar', 'Gambar', ['class'=>'col-md-2 col-md-offset-3 control-label']) !!}
  <div class="col-md-4">
    {!! Form::file('gambar', null, ['class'=>'form-control']) !!}
    {!! $errors->first('gambar', '<p class="help-block">:message</p>') !!}
  </div>
</div> -->

<div class="form-group">
  <div class="col-md-6 col-md-offset-5">
    {!! Form::submit('Simpan', ['class'=>'btn btn-primary']) !!}
  </div>
</div>
