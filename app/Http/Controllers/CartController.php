<?php

namespace App\Http\Controllers;

use App\Models\Color;
use App\Models\Product;
use App\Models\Size;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{

    public static $product;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $cartContents = Cart::content();
// return $cartContents;
        $products = $cartContents->map(function ($item) {
            $color = Color::find($item->options->color);
            $size = Size::find($item->options->size);
            
            return (object) array_merge((array) $item, [
                'color_name' => $color ? $color->name : 'N/A',
                'size_name' => $size ? $size->name : 'N/A'
            ]);
        });
        
        return view('website.cart.index', compact('products'));

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
        self::$product = Product::find($request->id);

        // Check if the product is already in the cart
        $cartItem = Cart::search(function ($cartItem, $rowId) use ($request) {
            return $cartItem->id === $request->id &&
                $cartItem->options->size === $request->size &&
                $cartItem->options->color === $request->color;
        })->first();

        // If the product is already in the cart
        if ($cartItem) {
            $message = 'Product is already in the cart.';
            
            if ($request->action_type === 'buy_now') {
                return redirect('/checkout')->with('warning', $message);
            } else {
                return redirect('/cart')->with('warning', $message);
            }
        }

        // If the product is not in the cart, add it
        Cart::add([
            'id'        => $request->id,
            'name'      => self::$product->name,
            'qty'       => $request->qty,
            'price'     => self::$product->selling_price,
            'options'   => [
                'image'  => self::$product->image,
                'code'   => self::$product->code,
                'size'   => $request->size,
                'color'  => $request->color,
            ]
        ]);

        // Set success message for adding the product
        $message = 'Added to cart successfully.';

        // Redirect based on action type
        if ($request->action_type === 'buy_now') {
            return redirect('/checkout')->with('message', $message);
        }

        return redirect('/cart')->with('message', $message);
    }

    

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        return $request;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Cart::remove ($id);
        return back()->with('error','Cart product remove successfully.');
    }


    public function delete(string $rowId)
    {
        Cart::remove ($rowId);
        return back()->with('error','Cart product remove successfully.');
    }

    public function updateProduct(Request $request)
    {
//        return $request->data;
        foreach ($request->data  as $item) {

            Cart::update($item['rowId'], $item['qty']);

        }

        return redirect('/cart')->with('warning','Cart product update successfully');
    }





}
