<?php

namespace App\Http\Controllers;

use App\Models\Size;
use App\Models\Unit;
use App\Models\Brand;
use App\Models\Color;
use App\Models\Product;
use App\Models\Category;
use App\Models\ProductSize;
use App\Models\SubCategory;
use App\Models\ProductColor;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use App\Models\ProductVariant;
use Illuminate\Contracts\Validation\Rule;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    private $product,$subCategories;

    public function index()
    {
        return view('admin.product.index', [
            'products' => Product::all(),

        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.product.add',[
            'categories' => Category::all(),
            'sub_categories' => SubCategory::all(),
            'brands'=>Brand::all(),
            'units' => Unit::all(),
            'colors' => Color::all(),
            'sizes' => Size::all()

        ]);
    }

    public function getSubCategoryByCategory()
    {
//        $id = $_GET['id'];

        $this->subCategories = SubCategory::where('category_id',$_GET['id'])->get();

//        return response()->json($id);
//        2nd
        return response()->json($this->subCategories);
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'sku.*' => 'required|unique:product_variants,sku',
        ]);
        // dd($request->all());
       $this->product = Product::newProduct($request);
       // Save product variants (including images)
    ProductVariant::newProductVariant(
        $request->sku,
        $request->variant_regular_price,
        $request->file('variant_image'), // use file method to get the uploaded files
        $request->variant_selling_price,
        $request->variant_stock_amount,
        $request->color_id,
        $request->size_id,
        $this->product->id
    );
       ProductImage::newProductImage($request->other_images,$this->product->id);
       return back()->with('message','Product Info save successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return view('admin.product.show', [
            'product' => $product

        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        return view('admin.product.edit',[
            'product' => $product,
            'categories' => Category::all(),
            'sub_categories' => SubCategory::all(),
            'brands' => Brand::all(),
            'units' => Unit::all(),
            'colors' => Color::all(),
            'sizes' => Size::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {

       // Validation
    // $request->validate([
    //     'sku.*' => [
    //         'required',
    //         Rule::unique('product_variants', 'sku')
    //             ->where('product_id', $product->id)
    //             ->ignore($product->id, 'product_id')
    //     ],
       
    // ]);

        ProductVariant::updateProductVariant(
            $request->sku,
            $request->variant_regular_price,
            $request->file('variant_image'),
            $request->variant_selling_price,
            $request->variant_stock_amount,
            $request->color_id,
            $request->size_id,
            $product->id
        );
        Product::updateProduct($request,$product);
        // ProductColor::updateProductColor($request->colors,$product->id);
        // ProductSize::updateProductSize($request->sizes,$product->id);
        if($request->other_images)
        {
            ProductImage::updateProductImage($request->other_images,$product->id);

        }
        return redirect('/product')->with('update','Product info Update Successfully.');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        dd($product);
        Product::deleteProduct($product);
        ProductVariant::deleteVariant($product->id);
        ProductImage::deleteProductImage($product->id);
        return back()->with('error','Product Info Deleted Successfully');
    }
    public function delete_variants($id)
    {
        ProductVariant::deleteProductVariant($id);
        return back()->with('error','Product Variant Deleted Successfully');
    }
}
