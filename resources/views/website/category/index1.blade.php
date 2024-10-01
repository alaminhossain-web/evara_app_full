

@extends('website.master')
@section('title', 'Product Category Page')

@section('body')
<div class="page-header breadcrumb-wrap">
    <div class="container">
        <div class="breadcrumb">
            <a href="{{ route('home') }}" rel="nofollow">Home</a>
            <span></span> Shop
            <span></span> {{ $category ? $category->name : 'Products' }}
        </div>
    </div>
</div>
<section class="mt-50 mb-50">
    <div class="container">
        <div class="row">
            
            
            <div class="col-lg-12">
                <a class="shop-filter-toogle" href="#filterSection" data-toggle="collapse">
                    <span class="fi-rs-filter mr-5"></span>
                    Filters
                    <i class="fi-rs-angle-small-down angle-down"></i>
                    <i class="fi-rs-angle-small-up angle-up"></i>
                </a>
                <div id="filterSection" class="shop-product-fillter-header collapse">
                    <div class="row">
                        <div class="col-lg-2 col-md-4 mb-lg-0 mb-md-5 mb-sm-5">
                            <h5 class="mb-20">Categories</h5>
                            <ul class="categor-list">
                                {{-- {{ dd($categories->products) }} --}}
                                @foreach ($categories as $category)
                                
                                <li class="cat-item text-muted"><a href="{{route('product-category',['id' => $category->id])}}">{{ $category->name }}</a>( ({{ $category->products->count() }}))</li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-4 mb-lg-0 mb-md-5 mb-sm-5">
                            <h5 class="mb-20">Manufacturers</h5>
                            <ul class="categor-list">
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Adidas</a>(125)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Armani</a>(68)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Burberry</a>(274)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Chanel</a>(152)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Prada</a>(302)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Bootstrap</a>(32)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Helixx</a>(312)</li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-4 mb-lg-0 mb-md-5 mb-sm-5">
                            <h5 class="mb-20">Price range</h5>
                            <ul class="categor-list">
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">All</a></li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">$0.00 - $20.00 </a></li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">$20.00 - $40.00 </a></li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">$40.00 - $60.00 </a></li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">$60.00 - $80.00 </a></li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">$80.00 - $100.00 </a></li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">$100.00 - $200.00 </a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-4 mb-lg-0 mb-md-5 mb-sm-5">
                            <h5 class="mb-20">By Tags</h5>
                            <ul class="categor-list">
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Cloth</a>(124)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Apple</a>(234)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Headphone</a>(657)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Music</a>(1221)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Dress</a>(455)</li>
                                <li class="cat-item text-muted"><a href="shop-grid-right.html">Trending</a>(1553)</li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-4 mb-lg-0 mb-md-5 mb-sm-5">
                            <h5 class="mb-20">By Color</h5>
                            <ul class="list-filter color-filter">
                                <li><a href="#" data-color="Red"><span class="product-color-red"></span></a></li>
                                <li><a href="#" data-color="Yellow"><span class="product-color-yellow"></span></a></li>
                                <li class="active"><a href="#" data-color="White"><span class="product-color-white"></span></a></li>
                                <li><a href="#" data-color="Orange"><span class="product-color-orange"></span></a></li>
                                <li><a href="#" data-color="Cyan"><span class="product-color-cyan"></span></a></li>
                                <li><a href="#" data-color="Green"><span class="product-color-green"></span></a></li>
                                <li><a href="#" data-color="Purple"><span class="product-color-purple"></span></a></li>
                            </ul>
                            <h5 class="mb-15 mt-20">By Size</h5>
                            <ul class="list-filter size-filter font-small">
                                <li><a href="#">S</a></li>
                                <li class="active"><a href="#">M</a></li>
                                <li><a href="#">L</a></li>
                                <li><a href="#">XL</a></li>
                                <li><a href="#">XXL</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-4 mb-lg-0 mb-md-5 mb-sm-5">
                            <h5 class="mb-20">By Review</h5>
                            <div class="product-rate-cover">
                                <div class="product-rate d-inline-block">
                                    <div class="product-rating" style="width:100%">
                                    </div>
                                </div>
                                <span class="font-small ml-5 text-muted"> (25)</span>
                            </div>
                            <div class="product-rate-cover">
                                <div class="product-rate d-inline-block">
                                    <div class="product-rating" style="width:80%">
                                    </div>
                                </div>
                                <span class="font-small ml-5 text-muted"> (25)</span>
                            </div>
                            <div class="product-rate-cover">
                                <div class="product-rate d-inline-block">
                                    <div class="product-rating" style="width:60%">
                                    </div>
                                </div>
                                <span class="font-small ml-5 text-muted"> (25)</span>
                            </div>
                            <div class="product-rate-cover">
                                <div class="product-rate d-inline-block">
                                    <div class="product-rating" style="width:40%">
                                    </div>
                                </div>
                                <span class="font-small ml-5 text-muted"> (25)</span>
                            </div>
                            <div class="product-rate-cover">
                                <div class="product-rate d-inline-block">
                                    <div class="product-rating" style="width:20%">
                                    </div>
                                </div>
                                <span class="font-small ml-5 text-muted"> (25)</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="shop-product-fillter">
                    <div class="totall-product">
                        <p> We found <strong class="text-brand">{{ $products->count() }}</strong> items for you!</p>
                    </div>
                    <div class="sort-by-product-area">
                        <div class="sort-by-cover mr-10">
                            <div class="sort-by-product-wrap">
                                <div class="sort-by">
                                    <span><i class="fi-rs-apps"></i>Show:</span>
                                </div>
                                <div class="sort-by-dropdown-wrap">
                                    <span> {{ $products->count() }} 
                                        {{-- <i class="fi-rs-angle-small-down"></i> --}}
                                    </span>
                                </div>
                            </div>
                            {{-- <div class="sort-by-dropdown">
                                <ul>
                                    <li><a class="active" href="#">50</a></li>
                                    <li><a href="#">100</a></li>
                                    <li><a href="#">150</a></li>
                                    <li><a href="#">200</a></li>
                                    <li><a href="#">All</a></li>
                                </ul>
                            </div> --}}
                        </div>
                        {{-- <div class="sort-by-cover">
                            <div class="sort-by-product-wrap">
                                <div class="sort-by">
                                    <span><i class="fi-rs-apps-sort"></i>Sort by:</span>
                                </div>
                                <div class="sort-by-dropdown-wrap">
                                    <span> Featured <i class="fi-rs-angle-small-down"></i></span>
                                </div>
                            </div>
                            <div class="sort-by-dropdown">
                                <ul>
                                    <li><a class="active" href="#">Featured</a></li>
                                    <li><a href="#">Price: Low to High</a></li>
                                    <li><a href="#">Price: High to Low</a></li>
                                    <li><a href="#">Release Date</a></li>
                                    <li><a href="#">Avg. Rating</a></li>
                                </ul>
                            </div>
                        </div> --}}
                    </div>
                </div>
                <div class="row product-grid-3">
                    @foreach($products as $product)
                    {{-- {{ dd($product) }} --}}
                    <div class="col-lg-3 col-md-4">
                        <div class="product-cart-wrap mb-30">
                            <div class="product-img-action-wrap">
                                <div class="product-img product-img-zoom">
                                    <a href="{{ route('product-detail',$product->id) }}">
                                        <img class="default-img" src="{{asset($product->image)}}" alt="" height="250">
                                        <img class="hover-img" src="{{asset($product->image)}}" alt="" height="250">
                                    </a>
                                </div>
                                <div class="product-action-1">
                                   
                                    <a aria-label="Add To Wishlist" class="action-btn hover-up" href="{{ route('wishlist.ad',$product->id) }}"><i class="fi-rs-heart"></i></a>
                                    
                                </div>
                                <div class="product-badges product-badges-position product-badges-mrg">
                                    <span class="new">New</span>
                                </div>
                            </div>
                            <div class="product-content-wrap">
                                <div class="product-category">
                                    <a href="{{ route('product-category',$product->id) }}">{{$product->category->name ?? null}}</a>
                                </div>
                                <h2><a href="{{route('product-detail',['id' => $product->id])}}">{{ $product->name }}</a></h2>
                                <div class="rating-result" title="90%">
                                    <span>
                                        <span>50%</span>
                                    </span>
                                </div>
                                <div class="product-price">
                                    <span>Tk. {{ $product->selling_price }}</span>
                                    <span class="old-price"> Tk. {{ $product->regular_price }}</span>
                                </div>
                                <div class="product-action-1 show">
                                    <a aria-label="Add To Cart" class="action-btn hover-up" href="{{ route('product-detail',$product->id) }}"><i class="fi-rs-shopping-bag-add"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
               
                <!--pagination-->
                <div class="pagination-area mt-15 mb-sm-5 mb-lg-0">
                    <nav aria-label="Page navigation example">
                        
                        {{ $products->links() }}
                       
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
