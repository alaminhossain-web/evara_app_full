<?php

namespace App\Providers;

use App\Models\Size;
use App\Models\Color;
use App\Models\Vendor;
use App\Models\Setting;
use App\Models\Category;
Use Illuminate\Support\Facades\Session;
use App\Models\WishList;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();
        View::composer(['website.master'],function ($view){
            $view->with('categories',Category::all());
            $view->with('wishlists',WishList::where('customer_id',Session::get('customer_id'))
                                              ->get());
            
            $view->with('vendor', Vendor::all());
        });
        View::share('setting', Setting::latest()->first());
        View::composer(['admin.master'],function ($view){

            $view->with('vendor', Vendor::where('id', Session::get('vendor_id'))
                ->first());
            /*
            $view->with('vendor', Vendor::all());
            */
        });
        View::share('colors',Color::get());
        View::share('sizes',Size::get());

    }
}
