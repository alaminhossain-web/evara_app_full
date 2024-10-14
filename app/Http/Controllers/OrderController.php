<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\Setting;
use Illuminate\Http\Request;
//use Barryvdh\DomPDF\Facade\Pdf;

use PDF;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orders = Order::orderby('id','desc')->get();

        // Count orders by each status
        $statusCounts = [
            'All' => Order::count(),
            'Pending' => Order::where('order_status', 'Pending')->count(),
            'Processing' => Order::where('order_status', 'Processing')->count(),
            'Complete' => Order::where('order_status', 'Complete')->count(),
            'Cancel' => Order::where('order_status', 'Cancel')->count(),
        ];

        return view('admin.order.index', compact('orders', 'statusCounts'));
    }
    public function filter(Request $request)
    {
        $query = Order::query();
    
        // Apply status filter if provided and not 'All'
        if ($request->has('status') && $request->status != 'All') {
            $query->where('order_status', $request->status);
        }
    
        // Apply date filter if provided
        if ($request->has('date_range')) {
            switch ($request->date_range) {
                case 'today':
                    $query->whereDate('created_at', today());
                    break;
                case 'yesterday':
                    $query->whereDate('created_at', today()->subDay());
                    break;
                case 'last_week':
                    $query->whereBetween('created_at', [now()->startOfWeek()->subWeek(), now()->endOfWeek()->subWeek()]);
                    break;
                case 'last_month':
                    $query->whereMonth('created_at', now()->subMonth()->month);
                    break;
                case 'last_year':
                    $query->whereYear('created_at', now()->subYear()->year);
                    break;
                case 'lifetime':
                    // No date filter, return all records
                    break;
                case 'custom':
                    if ($request->has('start_date') && $request->has('end_date')) {
                        $query->whereBetween('created_at', [$request->start_date, $request->end_date]);
                    }
                    break;
            }
        }
    
        // Fetch the filtered orders
        $orders = $query->latest()->get();
    
        // Return a view that contains only the table rows
        return view('admin.order.partials.order-rows', compact('orders'))->render();
    }
    

    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view('admin.order.show',[
            'order' => Order::find($id),

        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        return view('admin.order.edit',[
            'order' => Order::find($id),

        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
//        return $request;
        Order::updateOrder($request,$id );
        return redirect('/order')->with('message', 'Order info update successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Order::deleteOrder($id);
        OrderDetail::deleteOrderDetailInfo($id);

        return back()->with('message', 'Order Information delete successfully');

    }

    public function showInvoice( string $id)
    {
        return view('admin.order.invoice-show',[
            'order' => Order::find($id),
            'logo'  =>Setting::first()
        ]);
    }

    public function showDownload( string $id)
    {
            $order= Order::find($id);
            $logo =Setting::first();
//        $pdf = PDF::loadHTML('<h1>Test</h1>'); // make pdf
        $pdf = pdf::loadView('admin.order.invoice-download',compact('order','logo')); // make pdf
        return $pdf->stream('#invoice-'.'00' . $order->id . '.pdf'); // show pdf


//        return view('admin.order.invoice-download',[
//            'order' => Order::find($id)
//        ]);
    }
    public function updateStatus(Request $request)
{
    // $request->validate([
    //     'status' => 'required|string',
    //     'order_ids' => 'required|array',
    //     'order_ids.*' => 'exists:orders,id'
    // ]);

    $status = $request->input('status');
    $orderIds = $request->input('order_ids');

    Order::whereIn('id', $orderIds)->update(['order_status' => $status]);

    return response()->json(['status' => $status]);
}










}
