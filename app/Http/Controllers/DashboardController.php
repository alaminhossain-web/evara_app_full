<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
//        return Auth::user()->role;
       // Fetch counts and totals
        $customerCount = Customer::count();
        $orderCount = Order::count();
        $productCount = Product::count();
        $orderTotal = Order::sum('order_total');

       
       // Pending orders: count and total
        $orderPendingCount = Order::where('order_status', 'Pending')->count();
        $pendingTotal = Order::where('order_status', 'Pending')->sum('order_total');

        // Confirmed orders: count and total
        $orderConfirmCount = Order::where('order_status', 'Complete')->count();
        $confirmedTotal = Order::where('order_status', 'Complete')->sum('order_total');


        // Dynamic percentage calculation (e.g., increase from last month)
        $lastMonthTotal = Order::whereBetween('created_at', [now()->subMonth()->startOfMonth(), now()->subMonth()->endOfMonth()])
                                ->sum('order_total');
        $percentageChange = ($lastMonthTotal > 0) 
            ? (($orderTotal - $lastMonthTotal) / $lastMonthTotal) * 100 
            : 0;

        return view('admin.home.index', compact(
            'customerCount', 
            'orderCount', 
            'productCount', 
            'orderTotal', 
            'pendingTotal', 
            'confirmedTotal', 
            'percentageChange',
            'orderConfirmCount',
            'orderPendingCount'
        ));

    }
}
