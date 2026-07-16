<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

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
        Schema::defaultStringLength(191);

        if (file_exists(storage_path('installed'))) {

            $result = array();

            // Unseen Orders
            $orders = DB::table('orders')
                ->leftJoin('customers', 'customers.customers_id', '=', 'orders.customers_id')
                ->where('orders.is_seen', '=', 0)
                ->orderBy('orders.orders_id', 'desc')
                ->get();

            $index = 0;

            foreach ($orders as $orders_data) {

                array_push($result, $orders_data);

                $orders_products = DB::table('orders_products')
                    ->where('orders_id', '=', $orders_data->orders_id)
                    ->get();

                $result[$index]->price = $orders_products;
                $result[$index]->total_products = count($orders_products);

                $index++;
            }

            // New Customers
            $newCustomers = DB::table('users')
                ->where('is_seen', '=', 0)
                ->where('role_id', '=', 2)
                ->orderBy('id', 'desc')
                ->get();

            // Products Low In Quantity
            $lowInQunatity = DB::table('inventory')
                ->leftJoin('products', 'products.products_id', '=', 'inventory.products_id')
                ->leftJoin('images', 'products.products_image', '=', 'images.id')
                ->leftJoin('image_categories', 'image_categories.image_id', '=', 'images.id')
                ->leftJoin('manage_min_max', 'inventory.products_id', '=', 'manage_min_max.products_id')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'inventory.products_id')
                ->select(
                    'image_categories.path as image',
                    'products_description.products_name',
                    'inventory.products_id',
                    'inventory.stock',
                    'manage_min_max.min_level'
                )
                ->whereColumn('inventory.stock', '<', 'manage_min_max.min_level')
                ->where('products_description.language_id', '=', 1)
                ->groupBy(
                    'inventory.products_id',
                    'image_categories.path',
                    'products_description.products_name',
                    'inventory.stock',
                    'manage_min_max.min_level'
                )
                ->orderBy('manage_min_max.min_max_id', 'DESC')
                ->get();

            // Languages
            $languages = DB::table('languages')->get();

            // Website Settings
            $web_setting = DB::table('settings')->get();

            $images = '';

            // Share Data With Views
            view()->share('languages', $languages);
            view()->share('web_setting', $web_setting);
            view()->share('images', $images);
            view()->share('unseenOrders', $result);
            view()->share('newCustomers', $newCustomers);
            view()->share('lowInQunatity', $lowInQunatity);
        }
    }
}

