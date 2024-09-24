<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductVariant extends Model
{
    use HasFactory;
    private static $productVariant,$productImage,$productImages, $image, $imageName,$extension, $directory;

    private static function getImageUrl($image)
    {
        self::$extension    =$image->getClientOriginalExtension();
        self::$imageName    = rand(0,500000).'.'.self::$extension;
        self::$directory    = "upload/product-variant-images/";
        $image->move(self::$directory, self::$imageName);
        return  self::$directory.self::$imageName;
    }
    public static function newProductVariant($sku,$variant_regular_price,$variant_image,$variant_selling_price,$variant_stock_amount,$color_id,$size_id,$id)
    {
            foreach ($sku as $key => $sku) {

                $productVariant = new ProductVariant();
                $productVariant->product_id = $id;
                $productVariant->sku = $sku;
                $productVariant->variant_regular_price = $variant_regular_price[$key];
                $productVariant->variant_selling_price = $variant_selling_price[$key];
                $productVariant->variant_stock_amount = $variant_stock_amount[$key];
               
                if (isset($variant_image[$key])) {
                    $productVariant->variant_image = self::getImageUrl($variant_image[$key]);
                }
                $productVariant->color_id = $color_id[$key];
                $productVariant->size_id = $size_id[$key];
                $productVariant->save();
               
        }

    }

    public static function updateProductVariant(
        $sku, 
        $variant_regular_price, 
        $variant_image, 
        $variant_selling_price, 
        $variant_stock_amount, 
        $color_id, 
        $size_id, 
        $id
    ) {
        // Fetch existing variants for the product
        $existingVariants = ProductVariant::where('product_id', $id)->get()->keyBy('sku');
    
        // Loop through each SKU to check if it exists, then update or create
        foreach ($sku as $key => $value) {
            // Check if the SKU already exists
            $variant = $existingVariants->get($value);
    
            // If variant exists, update it
            if ($variant) {
                $variant->variant_regular_price = $variant_regular_price[$key];
                $variant->variant_selling_price = $variant_selling_price[$key];
                $variant->variant_stock_amount = $variant_stock_amount[$key];
                $variant->color_id = $color_id[$key];
                $variant->size_id = $size_id[$key];
    
                // Check if a new image is uploaded
                if (isset($variant_image[$key])) {
                    // Unlink (delete) the existing image file if it exists
                    if (file_exists($variant->variant_image)) {
                        unlink($variant->variant_image);
                    }
    
                    // Save the new image
                    $variant->variant_image = self::getImageUrl($variant_image[$key]);
                }
    
                $variant->save();
            } 
            // If variant doesn't exist, create a new one
            else {
                
                $newVariant = new ProductVariant();
                $newVariant->product_id = $id;
                $newVariant->sku = $value;
                $newVariant->variant_regular_price = $variant_regular_price[$key];
                $newVariant->variant_selling_price = $variant_selling_price[$key];
                $newVariant->variant_stock_amount = $variant_stock_amount[$key];
                $newVariant->color_id = $color_id[$key];
                $newVariant->size_id = $size_id[$key];
    
                // Handle image upload
                if (isset($variant_image[$key])) {
                    $newVariant->variant_image = self::getImageUrl($variant_image[$key]);
                }
    
                $newVariant->save();
            }
        }
    }
    
    
    
    public static function deleteVariant($id)
    {
        $variant = ProductVariant::find($id);
        // dd($variant);
        foreach($variant as $variant)
            {
                if(file_exists($variant->variant_image))
            {
                unlink($variant->variant_image);
            }
                $variant->delete();
            }
        if(file_exists($variant->variant_image))
        {
            unlink($variant->variant_image);
        }    
        $variant->delete();
    }

    public static function deleteProductVariant($id)
    {
        $variant = ProductVariant::find($id);
        // dd($variant);
        if(file_exists($variant->variant_image))
        {
            unlink($variant->variant_image);
        }    
        $variant->delete();
    }
    public function color()
    {
        return $this->belongsTo(Color::class);
    }
    public function size()
    {
        return $this->belongsTo(Size::class);
    }
}
