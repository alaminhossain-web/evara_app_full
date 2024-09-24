@extends('admin.master')

@section('title','Add Product')

@section('body')


 <!-- PAGE-HEADER -->
 <div class="page-header">
    <div>
        <h1 class="page-title">Product Module</h1>
    </div>
    <div class="ms-auto pageheader-btn">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0);">Product</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Product</li>
        </ol>
    </div>
</div>
<!-- PAGE-HEADER END -->
<div class="row">
    <div class="col-lg-10 col-md-12 mx-auto">
        <div class="card">
            <div class="card-header border-bottom">
                <h3 class="card-title">Edit Product Form</h3>
            </div>
            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form action="{{ route('product.update',$product->id)  }}" method="post" enctype="multipart/form-data">
                    @method('put')
                    @csrf
                    <div class="row mb-4">
                        <label class="col-md-3 form-label">Category Name</label>
                        <div class="col-md-9 form-group">
                            <select class="form-control select2 form-select" onchange="setSubCategory(this.value)" name="category_id">
                                <option value="" disabled selected>--Select Category--</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}" {{ $product->category_id == $category->id ? 'selected' : '' }} >{{ $category->name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger" >{{ $errors->has('category_id') ? $errors->first('category_id') : '' }}</span>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label class="col-md-3 form-label">Sub Category Name</label>
                        <div class="col-md-9 form-group ">
                            <select class=" form-control select2 form-select" id="subCategoryId"  name="sub_category_id">
                                <option value="" disabled selected>--Select Sub Category--</option>
                                @foreach ($sub_categories as $sub_category)
                                    <option value="{{ $sub_category->id }}" @selected($sub_category->id == $product->sub_category_id)>{{ $sub_category->name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger" >{{ $errors->has('sub_category_id') ? $errors->first('sub_category_id') : '' }}</span>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label class="col-md-3 form-label">Brand Name</label>
                        <div class="col-md-9 form-group">
                            <select class=" form-control  select2 form-select" name="brand_id">
                                <option value="" disabled selected>--Select Brand--</option>
                                @foreach ($brands as $brand)
                                    <option value="{{ $brand->id }}" @selected($brand->id == $product->brand_id)>{{ $brand->name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger" >{{ $errors->has('brand_id') ? $errors->first('brand_id') : '' }}</span>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label class="col-md-3 form-label">Unit Name</label>
                        <div class="col-md-9 form-group">
                            <select class=" form-control select2 form-select" name="unit_id">
                                <option value="" disabled selected>--Select Unit--</option>
                                @foreach ($units as $unit)
                                    <option value="{{ $unit->id }}" @selected($unit->id == $product->unit_id)>{{ $unit->name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger" >{{ $errors->has('unit_id') ? $errors->first('unit_id') : '' }}</span>
                        </div>
                    </div>
                    
                    <div class="row mb-4">
                        <label for="" class="col-md-3 form-label">Product Name</label>
                                <div class="col-md-9">
                                    <input type="text" name="name" value="{{ $product->name }}" class="form-control" placeholder="Product Name" />
                                    <span class="text-danger" >{{ $errors->has('name') ? $errors->first('name') : '' }}</span>

                                </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3 form-label">Product Code</label>
                                <div class="col-md-9">
                                    <input type="text" name="code" value="{{ $product->code }}" class="form-control" placeholder="Product Code" />
                                    <span class="text-danger" >{{ $errors->has('code') ? $errors->first('code') : '' }}</span>

                                </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3  form-label">Short Description</label>
                        <div class="col-md-9">
                            <textarea class="form-control mb-4" name="short_description" placeholder="Short Description" rows="3" >{{ $product->short_description }}</textarea>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3  form-label">Long Description</label>
                        <div class="col-md-9">
                            <textarea class="form-control mb-4" id="summernote" name="long_description" placeholder="Long Description" rows="3" >{{ $product->long_description }}</textarea>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3 form-label">Product Image</label>
                        <div class="col-md-9">
                            <input type="file" name="image" class="dropify" data-height="200" />
                            <img src="{{ asset($product->image) }}" alt="" height="100" width="100">
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3 form-label">Product Other Image</label>
                        <div class="col-md-9">
                            <input class="form-control" type="file" name="other_images[]" multiple />
                            @foreach ($product->productImages as $productImage)
                                <img src="{{ asset($productImage->image) }}" alt="" height="100" width="100">
                            @endforeach
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3  form-label">Product Price</label>
                        <div class="col-md-9">
                            <div class="input-group">
                                <input class="form-control" name="regular_price" value="{{ $product->regular_price }}" placeholder="Regular Price" type="number">
                                <input class="form-control" name="selling_price" value="{{ $product->selling_price }}"placeholder="Selling Price" type="number">
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="" class="col-md-3 form-label">Stock Amount</label>
                        <div class="col-md-9">
                            <input type="number" name="stock_amount" id="stockAmount" value="{{ $product->stock_amount }}"placeholder="Stock Amount" class="form-control">
                            <span class="text-danger" >{{ $errors->has('stock_amount') ? $errors->first('stock_amount') : '' }}</span>

                        </div>
                    </div>
                    <div class="container">
                        <div class="row mb-4 card">
                            <div class="card-body">
                                  <!-- Loop through existing variants -->
                <div class="variant-wrapper">
                    @foreach ($product->variants as $key => $data)
                    {{-- {{ $data }} --}}
                    <div class="field_wrapper mt-3">
                        <label class="card-title">Product Variant</label>
                        <div class="row">
                            <div class="col-md-3">
                                <label class="form-label">SKU</label>
                                <input type="text" class="form-control" name="sku[]" value="{{ $data->sku }}" placeholder="SKU" />
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">Regular Price</label>
                                <input type="number" class="form-control" name="variant_regular_price[]" placeholder="Regular Price" value="{{ $data->variant_regular_price }}" />
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">Selling Price</label>
                                <input type="number" class="form-control" name="variant_selling_price[]" placeholder="Selling Price" value="{{ $data->variant_selling_price }}" />
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">Stock Amount</label>
                                <input type="number" class="form-control" name="variant_stock_amount[]" placeholder="Stock Amount" value="{{ $data->variant_stock_amount }}" />
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4">
                                <label class="form-label">Image</label>
                                <input type="file" class="form-control" name="variant_image[]" />
                                @if ($data->variant_image)
                                    <img src="{{ asset($data->variant_image) }}" alt="" style="height: 40px; margin-top: 5px;" />
                                @endif
                            </div>
                            <div class="col-md-3 form-group">
                                <label class="form-label">Select Size</label>
                                <select multiple class="form-control select2 form-select" data-placeholder="Select Size" name="size_id[]">
                                    @foreach ($sizes as $size)
                                        <option value="{{ $size->id }}" @selected($size->id == $data->size_id)>{{ $size->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3 form-group">
                                <label class="form-label">Select Color</label>
                                <select multiple class="form-control select2 form-select" data-placeholder="Select Color" name="color_id[]">
                                    @foreach ($colors as $color)
                                        <option value="{{ $color->id }}" @selected($color->id == $data->color_id)>{{ $color->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-2 d-flex align-items-end mb-5">
                                <a href="{{ route('delete.variants',$data->id) }}" class=" btn btn-sm btn-danger mb-5" title="Remove field">
                                    <i class="fa fa-minus"></i> Remove
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                      <!-- Button to add new variant -->
                      <div class="float-end mt-3">
                        <a href="javascript:void(0);" class="add_button1 btn btn-sm btn-primary mb-5" title="Add field">
                            <i class="fa fa-plus"></i> Add Variant
                        </a>
                      </div>
                
                </div>
                            </div>
                        </div>
                    </div>
                   


                    <div class="row mb-4">
                        <label for="" class="col-md-3 form-label">Publication Status</label>
                        <div class="col-md-9 pt-3">
                            <label><input type="radio" name="status" value="1" {{ $product->status == 1 ? 'checked' : '' }}><span>Published</span></label>
                            <label>
                                <input type="radio" name="status" {{ $product->status == 0 ? 'checked' : '' }}value="0"><span>Unpublished</span>
                            </label>

                        </div>
                    </div>
                    <div class="row">
                        <label for="" class="col-md-3"></label>
                            <div class="col-md-9">
                                <input type="submit" class="btn btn-success rounded-0" value="Update Product Info">
                            </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
