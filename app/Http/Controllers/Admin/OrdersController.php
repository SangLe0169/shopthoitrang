<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Orders;
use App\Models\Customer;
use DB;

class OrdersController extends Controller
{
    //
    public function getOrders()
    {
        $data['orders']= DB::table('vp_customer')
        ->join('vp_orders','vp_customer.cus_id','=','vp_orders.or_Customer')
        ->select('vp_customer.*','vp_orders.*')
        ->get();
        return view('backend.orders',$data);
    }

}
