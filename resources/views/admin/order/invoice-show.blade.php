@extends('admin.master')

@section('title', 'Order Invoice-show')


@section('body')

    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        /* .invoice-box table tr td:nth-child(2) {
            text-align: right;
        } */

        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .invoice-box.rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .invoice-box.rtl table {
            text-align: right;
        }

        .invoice-box.rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>


    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Order Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Order</a></li>
                <li class="breadcrumb-item active" aria-current="page">Order Invoice</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->

    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Order Invoice Content</h3>
                </div>
                <div class="card-body">

                    <div class="invoice-box">
                        <table cellpadding="0" cellspacing="0">
                            <tr class="top">
                                <td colspan="4">
                                    <table>
                                        <tr>
                                            <td class="title">
                                                
                                                <img
                                                    src="{{ asset($setting->logo_jpg) }}"
                                                    style="height: 50px"
                                                />
                                            </td>

                                            <td align="right">
                                                {!! DNS1D::getBarcodeHTML("$order->id", 'CODABAR',3,38) !!}
                                                Invoice #: 00{{$order->id}}<br />
                                                Order Date: {{ \Carbon\Carbon::parse($order->order_date)->format('d, M Y') }}<br />
{{--                                                Invoice Date: {{ \Carbon\Carbon::now()->format('Y-m-d') }}--}}
                                                Invoice Date: {{ date('d, M Y') }}
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr class="information">
                                <td colspan="4">
                                    <table>
                                        <tr>
                                            <td>
                                                <h4>Delivery Address</h4>
                                               {{ $order->customer->name }}<br/>
                                               {{ $order->customer->mobile }}<br/>
                                               {{ $order->customer->email }}<br/>
                                               {{ $order->delivery_address }}<br/>
                                            </td>

                                            <td align="right">

                                                <h4>Company Info</h4>
                                                {{ $setting->company_name }}<br />
                                                {{$setting->contact_phone}}<br />
                                                {{$setting->contact_email}}
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr class="heading">
                                <td colspan="3" >Payment Method</td>

                                <td align="right">{{$order->payment_method}}</td>
                            </tr>

                            <tr class="details">
                                <td colspan="3" >Order Total</td>
                                <td align="right">{{$order->order_total}}</td>
                            </tr>

                            <tr class="heading">
                                <td>Item Info</td>
                                <td align="center">Unit Price</td>
                                <td align="center">Quantity</td>
                                <td align="right">Sub Total</td>
                            </tr>
                            @php
                                $sum = 0;
                            @endphp
                            @foreach($order->orderDetails as $orderDetail)
                                <tr class="item">
                                    <td>{{ $orderDetail->product_name }}</td>
                                    <td align="center">{{ $orderDetail->product_price }}</td>
                                    <td align="center">{{ $orderDetail->product_qty }}</td>
                                    <td align="right">{{ $total = $orderDetail->product_qty * $orderDetail->product_price }}TK.</td>
                                </tr>
                                @php
                                    $sum = $sum + $total
                                @endphp
                            @endforeach

                            <tr class="total">
                                <td></td>
                                <td></td>
                                <td align="center"></td>
                                <td align="right">Sub Total: {{ $sum }}Tk.</td>
                            </tr>

                            <tr class="total">
                                <td></td>
                                <td></td>
                                <td align="center"></td>
                                <td align="right">Tax: {{ round($tax=$sum*0.15) }}Tk.</td>
                            </tr>

                            <tr class="total">
                                <td></td>
                                <td></td>
                                <td align="center"></td>
                                <td align="right">Shipping Cost: {{ $shipping=100 }}Tk.</td>
                            </tr>
                            <tr class="total">
                                <td></td>
                                <td></td>
                                <td align="center"></td>
                                <td align="right">Total Payable: {{ $sum+$tax+$shipping }}Tk.</td>
                            </tr>

                        </table>
                    </div>


                </div>
            </div>
        </div>
    </div>
@endsection



