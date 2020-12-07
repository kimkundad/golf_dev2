@extends('layouts.template')

@section('title')
Reset Password | ช่างตกแต่งคอนกรีต เว็บไซต์ ที่รวบรวมช่างฝีมือดีทั่วฟ้าเมืองไทย
@stop

@section('stylesheet')
@stop('stylesheet')
@section('content')



<!-- Container / Start -->
<div class="container">

  <!-- Row / Start -->
  <div class="row">

    <div class="col-md-6 col-md-offset-3  ">

      <style>
      a.button.fb{
        background-color: #004dda;
      }
      .fb:hover{
        background-color: #004dda;
      }
      a.button.google{
        background-color: #f30c0c;
      }
      .google:hover{
        background-color: #f30c0c;
      }
      </style>

      <div class="sign-in-form style-1">


      <!-- Login -->
      <div class="tab-content margin-top-35 margin-bottom-50" id="tab1" >
        <h4 class="headline ">Reset Password</h4>

                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif


        <form class="form-horizontal" id="my_form_login" role="form" method="POST" action="{{ route('password.request') }}">
          {{ csrf_field() }}
          <input type="hidden" name="token" value="{{ $token }}">

          <p class="form-row form-row-wide">
            <label for="username">Email:
              <i class="im im-icon-Male"></i>
              <input type="text" class="input-text" name="email" value="{{ $email or old('email') }}" required autofocus/>

            </label>
            @if ($errors->has('email'))
                <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
          </p>


          <p class="form-row form-row-wide">
            <label for="password">Password:
              <i class="im im-icon-Lock-2"></i>
              <input id="password" type="password" class="input-text" name="password" required>
            </label>
            @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
          </p>


          <p class="form-row form-row-wide">
            <label for="password">Confirm Password:
              <i class="im im-icon-Lock-2"></i>
              <input id="password-confirm" type="password" class="input-text" name="password_confirmation" required>
            </label>
            @if ($errors->has('password_confirmation'))
                <span class="help-block">
                    <strong>{{ $errors->first('password_confirmation') }}</strong>
                </span>
            @endif
          </p>



          <div class="form-row">




            <a href="javascript:{}" onclick="document.getElementById('my_form_login').submit();" class="button book-now fullwidth margin-top-5">Reset Password</a>
          </div>
          <br />

        </form>
      </div>

      </div>



    </div>
  </div>
  <!-- Row / End -->

</div>
<!-- Container / End -->


@endsection

@section('scripts')




@stop('scripts')
