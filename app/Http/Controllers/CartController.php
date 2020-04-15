<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use Auth;
use Mail;
use App\Models\Product;
use App\Models\Customer;
use App\Models\Orders;
use App\Models\Order_detail;
class CartController extends Controller
{
    //
    public function getAddCart($id)
    {
        $product =Product::find($id);
        Cart::add(['id' => $id, 'name' => $product->pro_Tensanpham, 'qty' => 1, 'price' => $product->pro_Gia, 'weight' => 550, 'options' => ['img' => $product->pro_Hinhanh]]);
        return redirect('cart/show');
    }
    public function __construct() {
        $this->middleware('auth');
    }
    public function getShow()
    {
        $data['total'] = Cart::total();
        $data['items'] =Cart::content();
        
        return view('fontend.carts',$data);
    }
    public function getDelete($id)
    {
        if($id=='all'){
            Cart::destroy();
        }else{
            Cart::remove($id);
        }
        return back();
    }
    
    public function getUpdate(Request $request)
    {
       Cart::update($request->rowId,$request->qty);
    }
    public function getCheckout()
    {
        $data['total'] = Cart::total();
        $data['items'] =Cart::content();
        return view('fontend.checkout',$data);
    }

    public function postCheckout(Request $request)
    {

         $customer =new Customer;
         $customer->cus_Hokhachhang = $request->hodem;
         $customer->cus_Tenkhachhang = $request->ten;
         $customer->cus_Sodienthoai = $request->sodienthoai;
         $customer->cus_Diachi = $request->diachi;
         $customer->cus_Email = $request->email;
         $customer->cus_Note = $request->message;
         $customer->save();

         $oders =new Orders;
         $oders->or_Ngaydat =  date('Y-m-d');
         $oders->or_Tongtien = Cart::total();
         $oders->or_Payment =$request->payment_method;
         $oders->or_Customer =$customer->cus_id;
         $oders->save();

         $carts = Cart::content();
         foreach($carts as $cart){
            $oder_detail = new Order_detail;
            $oder_detail->detail_Order = $oders->or_id;
            $oder_detail->detail_Product =$cart->id;
            $oder_detail->detail_Soluong = $cart->qty;
            $oder_detail->detail_Đonvigia = $cart->price;
            $oder_detail->save();
         }
         Cart::destroy();
         $data['info'] = $request->all();
         $email = $request->email;
         $data['cart'] =Cart::content();
         $data['total'] =Cart::total();
         Mail::send('email.email_oder',$data,function($message) use($email){
                  $message->from('lesan0169@gmail.com','Shop thoi trang');
                  $message->to($email,$email);
                  $message->cc('lesang0169@gmail.com','Lê Sang');
                  $message->subject('Xác nhận đơn hàng ');
         });
         
         return redirect('/thanhtoan');
         
        
    }
    public function getThanhtoan()
    {
        return view('fontend.thanhtoan');
    }
}
