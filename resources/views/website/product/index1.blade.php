@extends('website.master')

@section('title', 'Product Detail Page')

@section('body')


    <div class="page-header breadcrumb-wrap">
        <div class="container">
            <div class="breadcrumb">
                <a href="index-2.html" rel="nofollow">Home</a>
                <span></span> {{ $product->category->name }}
                <span></span> {{ $product->name }}
            </div>
        </div>
    </div>
    <section class="mt-50 mb-50">
        <div class="container">

            <div class="row">

                <div class="col-lg-12">
                    <p class="text-primary text-bold">{{ session('message') }}</p>

                    <div class="product-detail accordion-detail">
                        <div class="row mb-50">
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="detail-gallery">
                                    <span class="zoom-icon"><i class="fi-rs-search"></i></span>
                                    <!-- MAIN SLIDES -->
                                    <div class="product-image-slider">
                                        @foreach ($product->productImages as $productImage)
                                            <figure class="border-radius-10">
                                                <img src="{{ asset($productImage->image) }}" alt="product image"
                                                    style="height: 300px; width:100%">
                                            </figure>
                                        @endforeach
                                    </div>
                                    <!-- THUMBNAILS -->
                                    <div class="slider-nav-thumbnails pl-15 pr-15">
                                        @foreach ($product->productImages as $productImage)
                                            <div><img src="{{ asset($productImage->image) }}" alt="product image"
                                                    style="height: 75px">
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                                <!-- End Gallery -->
                            </div>
                            <script>
                                function showColor(size,sizeId) {
                                    $('.attr-color').removeClass('d-none');
                                    // Hide all colors first
                                    $('.product_color').hide();
                                    $('.size_' + size).show();
                                    $('#selected_size_id').val(sizeId);
                                }
                
                                function selectColor(colorId, colorName) {
                                    $('#selected_color_id').val(colorId);
                                    $('.product_color').removeClass('active');
                                    $('.product_color.size_' + colorName).addClass('active');
                                }
                            
                                function changeQty(change) {
                                    var qtyVal = parseInt(document.getElementById('qty-val').innerText);
                                    qtyVal += change;
                                    if (qtyVal < 1) qtyVal = 1; // Prevent going below 1
                                    document.getElementById('qty-val').innerText = qtyVal;
                                    document.getElementById('qty-input').value = qtyVal; // Update hidden input
                                }
                            </script>
                            
                
                            <div class="col-md-6 col-sm-12 col-xs-12">

                                <form action="{{ route('cart.store') }}" method="post">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $product->id }}">
                                    <input type="hidden" name="size" id="selected_size_id" value="">
                                    <input type="hidden" name="color" id="selected_color_id" value="">
                                    <input type="hidden" name="action_type" id="action_type" value="add_to_cart"> <!-- Hidden input to track button clicked -->

                                    <div class="detail-info">
                                        <h2 class="title-detail">{{ $product->name }}</h2>
                                        <div class="product-detail-rating">
                                            <div class="pro-details-brand">
                                                <span>Brands: <a href="">{{ $product->brand->name }}</a></span>
                                            </div>
                                            <div class="product-rate-cover text-end">
                                                <div class="product-rate d-inline-block">
                                                    <div class="product-rating" style="width:90%"></div>
                                                </div>
                                                <span class="font-small ml-5 text-muted">(25 reviews)</span>
                                            </div>
                                        </div>
                                        <div class="clearfix product-price-cover">
                                            <div class="product-price primary-color float-left">
                                                <ins><span class="text-brand">${{ $product->selling_price }}.00</span></ins>
                                                <ins><span class="old-price font-md ml-15">${{ $product->regular_price }}.00</span></ins>
                                                <span class="save-price font-md color3 ml-15">25% Off</span>
                                            </div>
                                        </div>
                                        <div class="bt-1 border-color-1 mt-15 mb-15"></div>
                                        <div class="short-desc mb-30">
                                            <p>{{ $product->short_description }}</p>
                                        </div>
                                
                                        <div class="attr-detail attr-color mb-15 d-none">
                                            <strong class="mr-10">Color</strong>
                                            <ul class="list-filter color-filter">
                                                @foreach ($product->variants as $item)
                                            {{-- {{ dd($item->color) }} --}}
                                                    <li class="">
                                                        <a href="#" class="product_color size_{{ $item->size->name }}"
                                                           onclick="selectColor('{{ $item->color->id }}', '{{ strtolower($item->color->name) }}')">
                                                            <span class="product-color-{{ strtolower($item->color->name) }}"></span>
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                        <div class="attr-detail attr-size">
                                            @php
                                                $uniqueSizes = $product->sizes->unique('size_id')->pluck('size.name','size_id');
                                            @endphp
                                            {{-- {{ dd($uniqueSizes) }} --}}
                                           
                                            <strong class="mr-10">Size</strong>
                                            <ul class="list-filter size-filter font-small">
                                                @foreach ($uniqueSizes as $sizeId => $size)
                                                    <li class="{{ $sizeId == 0 ? 'active' : '' }}">
                                                        <a href="javascript:void(0);" onclick="showColor('{{ $size }}','{{ $sizeId }}')">{{ $size }}</a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                
                                        <div class="bt-1 border-color-1 mt-30 mb-30"></div>
                                        
                                        <div class="detail-extralink">
                                            <div class="detail-qty border radius">
                                                <a href="javascript:void(0);" class="qty-down" onclick="changeQty(-1)"><i class="fi-rs-angle-small-down"></i></a>
                                                <span class="qty-val" id="qty-val">1</span>
                                                <a href="javascript:void(0);" class="qty-up" onclick="changeQty(1)"><i class="fi-rs-angle-small-up"></i></a>
                                            </div>
                                            <input type="hidden" name="qty" id="qty-input" value="1" min="1" />
                                            <div class="product-extra-link2">
                                                <button type="submit" class="button button-add-to-cart" onclick="document.getElementById('action_type').value = 'add_to_cart'">Add to Cart</button>
                                                <button type="submit" class="button button-buy-now"  onclick="document.getElementById('action_type').value = 'buy_now'">Buy Now</button>
                                                <a aria-label="Add To Wishlist" class="action-btn hover-up" href="{{ route('wishlist.ad', ['id' => $product->id]) }}">
                                                    <i class="fi-rs-heart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <ul class="product-meta font-xs color-grey mt-50">
                                            <li class="mb-5">SKU: <a href="#">{{ $product->code }}</a></li>
                                            <li class="mb-5">Tags: <a href="#" rel="tag">Cloth</a>, <a
                                                    href="#" rel="tag">Women</a>, <a href="#" rel="tag">Dress</a></li>
                                            <li>Availability:<span class="in-stock text-success ml-5">{{ $product->stock_amount }} Items In Stock</span></li>
                                        </ul>
                                    </div>
                                </form>
                                

                                <!-- Detail Info -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-10 m-auto entry-main-content">
                                <h2 class="section-title style-1 mb-30">Description</h2>
                                <div class="description mb-50">
                                    <p> {!! $product->long_description !!}</p>
                                </div>
                                {{-- <h3 class="section-title style-1 mb-30">Additional info</h3>
                                    <table class="font-md mb-30">
                                        <tbody>
                                            <tr class="stand-up">
                                                <th>Stand Up</th>
                                                <td>
                                                    <p>35″L x 24″W x 37-45″H(front to back wheel)</p>
                                                </td>
                                            </tr>
                                            <tr class="folded-wo-wheels">
                                                <th>Folded (w/o wheels)</th>
                                                <td>
                                                    <p>32.5″L x 18.5″W x 16.5″H</p>
                                                </td>
                                            </tr>
                                            <tr class="folded-w-wheels">
                                                <th>Folded (w/ wheels)</th>
                                                <td>
                                                    <p>32.5″L x 24″W x 18.5″H</p>
                                                </td>
                                            </tr>
                                            <tr class="door-pass-through">
                                                <th>Door Pass Through</th>
                                                <td>
                                                    <p>24</p>
                                                </td>
                                            </tr>
                                            <tr class="frame">
                                                <th>Frame</th>
                                                <td>
                                                    <p>Aluminum</p>
                                                </td>
                                            </tr>
                                            <tr class="weight-wo-wheels">
                                                <th>Weight (w/o wheels)</th>
                                                <td>
                                                    <p>20 LBS</p>
                                                </td>
                                            </tr>
                                            <tr class="weight-capacity">
                                                <th>Weight Capacity</th>
                                                <td>
                                                    <p>60 LBS</p>
                                                </td>
                                            </tr>
                                            <tr class="width">
                                                <th>Width</th>
                                                <td>
                                                    <p>24″</p>
                                                </td>
                                            </tr>
                                            <tr class="handle-height-ground-to-handle">
                                                <th>Handle height (ground to handle)</th>
                                                <td>
                                                    <p>37-45″</p>
                                                </td>
                                            </tr>
                                            <tr class="wheels">
                                                <th>Wheels</th>
                                                <td>
                                                    <p>12″ air / wide track slick tread</p>
                                                </td>
                                            </tr>
                                            <tr class="seat-back-height">
                                                <th>Seat back height</th>
                                                <td>
                                                    <p>21.5″</p>
                                                </td>
                                            </tr>
                                            <tr class="head-room-inside-canopy">
                                                <th>Head room (inside canopy)</th>
                                                <td>
                                                    <p>25″</p>
                                                </td>
                                            </tr>
                                            <tr class="pa_color">
                                                <th>Color</th>
                                                <td>
                                                    <p>Black, Blue, Red, White</p>
                                                </td>
                                            </tr>
                                            <tr class="pa_size">
                                                <th>Size</th>
                                                <td>
                                                    <p>M, S</p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table> --}}
                            </div>
                            <div class="col-lg-10 m-auto entry-main-content">

                                <div class="social-icons single-share">
                                    <ul class="text-grey-5 d-inline-block">
                                        <li><strong class="mr-10">Share this:</strong></li>
                                        <li class="social-facebook"><a href="#"><img
                                                    src="{{ asset('/') }}website/assets/imgs/theme/icons/icon-facebook.svg"
                                                    alt=""></a></li>
                                        <li class="social-twitter"> <a href="#"><img
                                                    src="{{ asset('/') }}website/assets/imgs/theme/icons/icon-twitter.svg"
                                                    alt=""></a></li>
                                        <li class="social-instagram"><a href="#"><img
                                                    src="{{ asset('/') }}website/assets/imgs/theme/icons/icon-instagram.svg"
                                                    alt=""></a></li>
                                        <li class="social-linkedin"><a href="#"><img
                                                    src="{{ asset('/') }}website/assets/imgs/theme/icons/icon-pinterest.svg"
                                                    alt=""></a></li>
                                    </ul>
                                </div>
                                <h3 class="section-title style-1 mb-30 mt-30">Reviews (3)</h3>
                                <!--Comments-->
                                <div class="comments-area style-2">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <h4 class="mb-30">Customer questions & answers</h4>
                                            <div class="comment-list">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb text-center">
                                                            <img src="{{ asset('/') }}website/assets/imgs/page/avatar-6.jpg"
                                                                alt="">
                                                            <h6><a href="#">Jacky Chan</a></h6>
                                                            <p class="font-xxs">Since 2012</p>
                                                        </div>
                                                        <div class="desc">
                                                            <div class="product-rate d-inline-block">
                                                                <div class="product-rating" style="width:90%">
                                                                </div>
                                                            </div>
                                                            <p>Thank you very fast shipping from Poland only 3days.</p>
                                                            <div class="d-flex justify-content-between">
                                                                <div class="d-flex align-items-center">
                                                                    <p class="font-xs mr-30">December 4, 2020 at 3:12
                                                                        pm </p>
                                                                    <a href="#" class="text-brand btn-reply">Reply
                                                                        <i class="fi-rs-arrow-right"></i> </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--single-comment -->
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb text-center">
                                                            <img src="{{ asset('/') }}website/assets/imgs/page/avatar-7.jpg"
                                                                alt="">
                                                            <h6><a href="#">Ana Rosie</a></h6>
                                                            <p class="font-xxs">Since 2008</p>
                                                        </div>
                                                        <div class="desc">
                                                            <div class="product-rate d-inline-block">
                                                                <div class="product-rating" style="width:90%">
                                                                </div>
                                                            </div>
                                                            <p>Great low price and works well.</p>
                                                            <div class="d-flex justify-content-between">
                                                                <div class="d-flex align-items-center">
                                                                    <p class="font-xs mr-30">December 4, 2020 at 3:12
                                                                        pm </p>
                                                                    <a href="#" class="text-brand btn-reply">Reply
                                                                        <i class="fi-rs-arrow-right"></i> </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--single-comment -->
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="thumb text-center">
                                                            <img src="{{ asset('/') }}website/assets/imgs/page/avatar-8.jpg"
                                                                alt="">
                                                            <h6><a href="#">Steven Keny</a></h6>
                                                            <p class="font-xxs">Since 2010</p>
                                                        </div>
                                                        <div class="desc">
                                                            <div class="product-rate d-inline-block">
                                                                <div class="product-rating" style="width:90%">
                                                                </div>
                                                            </div>
                                                            <p>Authentic and Beautiful, Love these way more than ever
                                                                expected They are Great earphones</p>
                                                            <div class="d-flex justify-content-between">
                                                                <div class="d-flex align-items-center">
                                                                    <p class="font-xs mr-30">December 4, 2020 at 3:12
                                                                        pm </p>
                                                                    <a href="#" class="text-brand btn-reply">Reply
                                                                        <i class="fi-rs-arrow-right"></i> </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--single-comment -->
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <h4 class="mb-30">Customer reviews</h4>
                                            <div class="d-flex mb-30">
                                                <div class="product-rate d-inline-block mr-15">
                                                    <div class="product-rating" style="width:90%">
                                                    </div>
                                                </div>
                                                <h6>4.8 out of 5</h6>
                                            </div>
                                            <div class="progress">
                                                <span>5 star</span>
                                                <div class="progress-bar" role="progressbar" style="width: 50%;"
                                                    aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <span>4 star</span>
                                                <div class="progress-bar" role="progressbar" style="width: 25%;"
                                                    aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <span>3 star</span>
                                                <div class="progress-bar" role="progressbar" style="width: 45%;"
                                                    aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">45%
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <span>2 star</span>
                                                <div class="progress-bar" role="progressbar" style="width: 65%;"
                                                    aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">65%
                                                </div>
                                            </div>
                                            <div class="progress mb-30">
                                                <span>1 star</span>
                                                <div class="progress-bar" role="progressbar" style="width: 85%;"
                                                    aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">85%
                                                </div>
                                            </div>
                                            <a href="#" class="font-xs text-muted">How are ratings
                                                calculated?</a>
                                        </div>
                                    </div>
                                </div>
                                <!--comment form-->
                                <div class="comment-form">
                                    <h4 class="mb-15">Add a review</h4>
                                    <div class="product-rate d-inline-block mb-30">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-md-12">
                                            <form class="form-contact comment_form" action="#" id="commentForm">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                                                placeholder="Write Comment"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <input class="form-control" name="name" id="name"
                                                                type="text" placeholder="Name">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <input class="form-control" name="email" id="email"
                                                                type="email" placeholder="Email">
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <input class="form-control" name="website" id="website"
                                                                type="text" placeholder="Website">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="button button-contactForm">Submit
                                                        Review</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-60">
                            <div class="col-12">
                                <h3 class="section-title style-1 mb-30">Related products</h3>
                            </div>
                            <div class="col-12">
                                <div class="row related-products">
                                    @foreach ($category_products as $category_product)
                                        <div class="col-lg-3 col-md-4 col-12 col-sm-6">
                                            <div class="product-cart-wrap small hover-up">
                                                <div class="product-img-action-wrap">
                                                    <div class="product-img product-img-zoom">
                                                        <a href="{{ route('product-detail',$category_product->id) }}" tabindex="0">
                                                            <img class="default-img"
                                                                src="{{ asset($category_product->image) }}"
                                                                alt="" height="250">
                                                            <img class="hover-img"
                                                                src="{{ asset($category_product->image) }}"
                                                                alt="" height="250">
                                                        </a>
                                                    </div>
                                                    <div class="product-action-1">
                                                        {{-- <a aria-label="Quick view" class="action-btn small hover-up"
                                                            data-bs-toggle="modal" data-bs-target="#quickViewModal"><i
                                                                class="fi-rs-search"></i></a> --}}
                                                        <a aria-label="Add To Wishlist" class="action-btn small hover-up"
                                                            href="{{ route('wishlist.ad',$product->id) }}" tabindex="0"><i
                                                                class="fi-rs-heart"></i></a>
                                                       
                                                    </div>
                                                    <div class="product-badges product-badges-position product-badges-mrg">
                                                        <span class="hot">Hot</span>
                                                    </div>
                                                </div>
                                                <div class="product-content-wrap">
                                                    <h2><a href="{{ route('product-detail',$category_product->id) }}"
                                                            tabindex="0">{{ $category_product->name }}</a></h2>
                                                    <div class="rating-result" title="90%">
                                                        <span>
                                                        </span>
                                                    </div>
                                                    <div class="product-price">
                                                        <span>${{ $category_product->selling_price }} </span>
                                                        <span
                                                            class="old-price">${{ $category_product->regular_price }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="banner-img banner-big wow fadeIn f-none animated mt-50">
                            <img class="border-radius-10"
                                src="{{ asset('/') }}website/assets/imgs/banner/banner-4.png" alt="">
                            <div class="banner-text">
                                <h4 class="mb-15 mt-40">Repair Services</h4>
                                <h2 class="fw-600 mb-20">We're an Apple <br>Authorised Service Provider</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
