@extends('website.master')
@section('body')
    <div class="page-header breadcrumb-wrap">
        <div class="container">
            <div class="breadcrumb">
                <a href="" rel="nofollow">Home</a>
                <span></span> Shop
                <span></span> Your Cart
            </div>
        </div>
    </div>
    <section class="mt-50 mb-50">

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="{{route('cart.update-product')}}" method="post">
                        @csrf
                        <div class="table-responsive">
                            <p class="text-center">{{session('message')}}</p>
                            <table class="table shopping-summery text-center clean">
                                <thead>
                                <tr class="main-heading">
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Subtotal</th>
                                    <th scope="col">Remove</th>
                                </tr>
                                </thead>
                               
                                <tbody>
                                    @php($sum = 0)
                                    @foreach($products as $key => $product)
                                        @php
                                            $colorName = $colors->where('id', $product->options->color)->first();
                                            $sizeName = $sizes->where('id', $product->options->size)->first();
                                        @endphp
                                
                                        <tr>
                                            <td class="image product-thumbnail">
                                                <img src="{{ asset($product->options->image) }}" alt="#">
                                            </td>
                                            <td class="product-des product-name">
                                                <h5 class="product-name">
                                                    <a href="{{ route('product-detail', ['id' => $product->id]) }}" target="_blank">{{ $product->name }}</a>
                                                </h5>
                                                <p class="font-xs">
                                                    <span class="fw-bold">Color: </span> {{ $colorName ? $colorName->name : 'N/A' }} <br/>
                                                    <span class="fw-bold">Size: </span> {{ $sizeName ? $sizeName->name : 'N/A' }} <br/>
                                                </p>
                                            </td>
                                            <td class="price" data-title="Price">
                                                <span>TK. {{ $product->price }}</span>
                                            </td>
                                            <td class="text-center" data-title="Stock">
                                                <div class="w-25 m-auto">
                                                    <input type="number" name="data[{{$key}}][qty]" min="1" class="form-control" value="{{ $product->qty }}"/>
                                                    <input type="hidden" name="data[{{$key}}][rowId]" class="form-control" value="{{ $product->rowId }}"/>
                                                </div>
                                            </td>
                                            <td class="text-right" data-title="Cart">
                                                <span>TK. {{ $product->subtotal }}</span>
                                            </td>
                                            <td class="action" data-title="Remove">
                                                <a href="{{ route('cart.delete', ['rowId' => $product->rowId]) }}" 
                                                   onclick="return confirm('Are you sure to delete this?');" 
                                                   class="btn bg-danger border-0 btn-sm">
                                                    <i class="fi-rs-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        @php($sum += $product->subtotal)
                                    @endforeach
                                <tr>
                                    <td colspan="6" class="text-end">
                                        <a href="#" class="text-muted"> <i class="fi-rs-cross-small"></i> Clear Cart</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="cart-action text-end">
                            <button type="submit" class="btn"><i class="fi-rs-shopping-bag mr-10"></i>Update Cart</button>
                            <a href="{{route('home')}}" class="btn"><i class="fi-rs-shopping-bag mr-10"></i>Continue Shopping</a>
                        </div>
                    </form>
                    <div class="divider center_icon mt-50 mb-50"><i class="fi-rs-fingerprint"></i></div>
                    <div class="row mb-50">
                        <div class="col-lg-6 col-md-12">
                            {{-- <div class="heading_s1 mb-3">
                                <h4>Calculate Shipping</h4>
                            </div>
                            <p class="mt-15 mb-30">Flat rate: <span class="font-xl text-brand fw-900">5%</span></p>
                            <form class="field_form shipping_calculator">
                                <div class="form-row">
                                    <div class="form-group col-lg-12">
                                        <div class="custom_select">
                                            <select class="form-control select-active">
                                                <option value="">Choose a option...</option>
                                                <option value="AG">Antigua and Barbuda</option>
                                                <option value="YE">Yemen</option>
                                                <option value="ZM">Zambia</option>
                                                <option value="ZW">Zimbabwe</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row row">
                                    <div class="form-group col-lg-6">
                                        <input required="required" placeholder="State / Country" name="name" type="text">
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <input required="required" placeholder="PostCode / ZIP" name="name" type="text">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-lg-12">
                                        <button class="btn  btn-sm"><i class="fi-rs-shuffle mr-10"></i>Update</button>
                                    </div>
                                </div>
                            </form> --}}
                            <div class="mb-30 mt-50">
                                <div class="heading_s1 mb-3">
                                    <h4>Apply Coupon</h4>
                                </div>
                                <div class="total-amount">
                                    <div class="left">
                                        <div class="coupon">
                                            <form action="#" target="_blank">
                                                <div class="form-row row justify-content-center">
                                                    <div class="form-group col-lg-6">
                                                        <input class="font-medium" name="Coupon" placeholder="Enter Your Coupon">
                                                    </div>
                                                    <div class="form-group col-lg-6">
                                                        <button class="btn  btn-sm"><i class="fi-rs-label mr-10"></i>Apply</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="border p-md-4 p-30 border-radius cart-totals">
                                <div class="heading_s1 mb-3">
                                    <h4>Cart Totals</h4>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                        <tr>
                                            <td class="cart_total_label">Cart Subtotal</td>
                                            <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">Tk. {{ $sum }}</span></td>
                                        </tr>
                                        <tr>
                                            <td class="cart_total_label">Tax Amount (15%)</td>
                                            <td class="cart_total_amount"><span class="font-lg fw-900 text-brand">Tk. {{ $tax = round($sum * 0.15) }}</span></td>
                                        </tr>
                                        <tr>
                                            <td class="cart_total_label">Shipping</td>
                                            <td class="cart_total_amount">
                                                <i class="ti-gift mr-5"></i>
                                                Shipping Cost : {{ $shippingCost = 100 }}
                                               {{-- <label for=""><input type="radio" name="shipping_cost" value="60"> Inside Dhaka (BDT 60)</label>
                                       <label for=""><input type="radio" name="shipping_cost" value="120"> Output Dhaka (BDT 120)</label> --}}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart_total_label">Total</td>
                                            <td class="cart_total_amount"><strong><span class="font-xl fw-900 text-brand">
                                                        Tk. {{ $sum + $tax + $shippingCost }}
                                                    </span></strong></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <a href="{{ route('checkout') }}" class="btn "> <i class="fi-rs-box-alt mr-10"></i> Proceed To CheckOut</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
