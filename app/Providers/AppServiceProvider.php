<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slide;
use App\Models\Brand;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        $data['categories'] = Category::all();
        view()->share($data);
        $data['vp_brand'] = Brand::all();
        view()->share($data);
        $data['vp_product'] = Product::all();
        view()->share($data);
        $data['slide'] = Slide::all();
        view()->share($data);

    }
}
