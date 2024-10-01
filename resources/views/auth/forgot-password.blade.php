<!doctype html>
<html lang="en" dir="ltr">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <!-- META DATA -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords"
          content="">

    <!-- TITLE -->
    <title>{{ $setting->company_name }}</title>

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ $setting->favicon }}" />

    <!-- BOOTSTRAP CSS -->
    <link id="style" href="{{asset('/')}}admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- STYLE CSS -->
    <link href="{{asset('/')}}admin/assets/css/style.css" rel="stylesheet" />
    <link href="{{asset('/')}}admin/assets/css/skin-modes.css" rel="stylesheet" />



    <!--- FONT-ICONS CSS -->
    <link href="{{asset('/')}}admin/assets/plugins/icons/icons.css" rel="stylesheet" />

    <!-- INTERNAL Switcher css -->
    <link href="{{asset('/')}}admin/assets/switcher/css/switcher.css" rel="stylesheet">
    <link href="{{asset('/')}}admin/assets/switcher/demo.css" rel="stylesheet">

</head>


<body class="ltr login-img">



{{--<!-- GLOBAL-LOADER -->--}}
{{--<div id="global-loader">--}}
{{--    <img src="{{asset('/')}}website/assets/imgs/theme/logo.svg" class="loader-img" alt="Loader">--}}
{{--</div>--}}



<!-- PAGE -->
<div class="page">
    <div>
        <!-- CONTAINER OPEN -->
        <div class="col mx-auto text-center">
            <a href="{{route('home')}}">
                <img src="{{ $setting->logo_png }}" class="header-brand-img" alt="">
            </a>
        </div>
        <div class="col-12 container-login100">
            <div class="row">
                <div class="col col-login mx-auto">
                    @if (session('status'))
                    <div class="mb-4 text-success">
                        {{ session('status') }}
                    </div>
                @endif
                    <form class="card shadow-none" method="post" action="{{ route('password.email') }}">
                        @csrf
                        <div class="card-body">
                            <div class="text-center">
                                <span class="login100-form-title">
                                    Forgot Password
                                </span>
                                <p class="text-muted">Enter the email address registered on your account</p>
                            </div>
                            <div class="pt-3" id="forgot">
                                <div class="form-group">
                                    <label class="form-label" for="eMail">E-Mail:</label>
                                    <input class="form-control" id="eMail" name="email" placeholder="Enter Your Email" type="email" value={{ old('email') }}>
                                    <div class="text-danger mt-2">{{$errors->has('email') ? $errors->first('email') : ''}}</div>
                                </div>
                                {{-- <div class="submit">
                                    <a class="btn btn-primary d-grid" href="index.html">Submit</a>
                                </div> --}}
                                <button type="submit" class="btn btn-primary d-grid">Email Password Reset Link</button>
                                <div class="text-center mt-4">
                                    <a class="text-primary ms-1" href="{{ route('login') }}">Send me Back</a>
                                </div>
                            </div>

                        </div>
                        <div class="card-footer">
                            <div class="d-flex justify-content-center my-3">
                                <a href="javascript:void(0)" class="social-login  text-center me-4">
                                    <i class="fa fa-google"></i>
                                </a>
                                <a href="javascript:void(0)" class="social-login  text-center me-4">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="javascript:void(0)" class="social-login  text-center">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- CONTAINER CLOSED -->
    </div>
</div>
<!--END PAGE -->


<!-- JQUERY JS -->
<script src="{{asset('/')}}admin/assets/plugins/jquery/jquery.min.js"></script>

<!-- BOOTSTRAP JS -->
<script src="{{asset('/')}}admin/assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Perfect SCROLLBAR JS-->
<script src="{{asset('/')}}admin/assets/plugins/p-scroll/perfect-scrollbar.js"></script>

<!-- STICKY JS -->
<script src="{{asset('/')}}admin/assets/js/sticky.js"></script>



<!-- COLOR THEME JS -->
<script src="{{asset('/')}}admin/assets/js/themeColors.js"></script>

<!-- CUSTOM JS -->
<script src="{{asset('/')}}admin/assets/js/custom.js"></script>

<!-- SWITCHER JS -->
<script src="{{asset('/')}}admin/assets/switcher/js/switcher.js"></script>

</body>




</html>










{{-- 
<x-guest-layout>
    <x-authentication-card>
        <x-slot name="logo">
            <x-authentication-card-logo />
        </x-slot>

        <div class="mb-4 text-sm text-gray-600">
            {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
        </div>

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <x-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('password.email') }}">
            @csrf

            <div class="block">
                <x-label for="email" value="{{ __('Email') }}" />
                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            </div>

            <div class="flex items-center justify-end mt-4">
                <x-button>
                    {{ __('Email Password Reset Link') }}
                </x-button>
            </div>
        </form>
    </x-authentication-card>
</x-guest-layout> --}}
