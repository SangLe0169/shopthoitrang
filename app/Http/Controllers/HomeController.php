<?php

namespace App\Http\Controllers;
use App\Models\Product;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Slide;
use App\Models\Comment;
use App\Models\Brand;
use Auth;
use DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
   
    public function index()
    {
        
        $data['featured'] = Product::where('pro_featured',1)->orderBy('pro_id','desc')->take(4)->get();
        $data['news'] = Product::orderBy('pro_id','desc')->take(3)->get();
        $data['promotion'] = Product::where('pro_Khuyenmai',1)->orderBy('pro_id','desc')->take(3)->get();
        return view('fontend.home',$data);
    }
    public function chitietsanpham($id)
    {
        $comment = DB::table('users')
              ->join('vp_comment','users.id','=','vp_comment.com_user')
              ->join('vp_product','vp_comment.com_product','=','vp_product.pro_id')
              ->select('users.name','vp_comment.*')
              ->where(['vp_product.pro_id'=>$id])
              ->get();
        $data['item'] = Product::find($id);
        return view('fontend.detail_product',$data,['comment'=>$comment]);
    }
    
    public function list_product($id)
    {
        $data['cateName'] = Category::find($id);
        $data['items'] = Product::where('pro_cate',$id)->orderBy('pro_id','desc')->paginate(3);
        return view('fontend.list_product',$data);
    }
    public function trademark($id)
    {
        $data['Thuonghieu']= Brand::find($id);
        $data['items'] = Product::where('pro_Thuonghieu',$id)->orderBy('pro_id','desc')->paginate(3);
        return view('fontend.trademark',$data);
    }
    public function postComment(Request $request,$id)
    {
        $comment = new Comment;
        $comment->com_product = $id;
        $comment->com_user = Auth::user()->id;
        $comment->com_content = $request->content;
        $comment->save();
        return redirect("/detail/{$id}");

    }
    public function getSearch(Request $request)
    {
        $result = $request->result;
        $data['keyword']=$result;
        $result = str_replace('','%',$result);
        $data['items'] = Product::where('pro_Tensanpham', 'like', '%' .$result. '%')->get();
        return view('fontend.search',$data);
    }
    public function getCart()
    {
        return view('fontend.carts');
    }

}
