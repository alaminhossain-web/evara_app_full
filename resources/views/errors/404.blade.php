
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <title>{{$setting->company_name}}</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset($setting->favicon)}}">
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{asset('/')}}website/assets/css/maind134.css?v=3.4">
</head>

<body>
    <main class="main page-404">
        <div class="container">
            <div class="row align-items-center height-100vh text-center">
                <div class="col-lg-8 m-auto">
                    <p class="mb-50"><img src="assets/imgs/theme/404.png" alt="" class="hover-up"></p>
                    <h2 class="mb-30">Page Not Found</h2>
                    <p class="font-lg text-grey-700 mb-30">
                        The link you clicked may be broken or the page may have been removed.<br> visit the <a href="{{ route('home') }}"> <span> Homepage</span></a> or <a href="{{ route('contact') }}"><span>Contact us</span></a> about the problem
                    </p>
                    <form class="contact-form-style text-center" id="contact-form" action="#" method="post">
                        {{-- <div class="row">
                            <div class="col-lg-6 m-auto">
                                <div class="input-style mb-20 hover-up">
                                    <input name="name" placeholder="Search" type="text">
                                </div>
                            </div>
                        </div> --}}
                        <a class="btn btn-default submit-auto-width font-xs hover-up" href="{{ route('home') }}">Back To Home Page</a>
                    </form>
                </div>
            </div>
        </div>
    </main>
   
    
    <script src="{{asset('/')}}website/assets/js/maind134.js?v=3.4"></script>
</body>

</html>