<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use Hash;
use Carbon\Carbon;
use Mail;
use App\Http\Requests\ResetPasswordRequest;

class LoginController extends Controller
{
    //
    public function getSignin()
    {
        return view('fontend.login');
    }
    public function postSignin(Request $rq)
    {
          $this->validate($rq,
            [
                'email' =>'required|email|unique:vp_users,email',
                'password' => 'required|min:6|max:20',
                'Ten'=>'required',
                're_password'=>'required|same:password'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email' => 'Không đúng định dạng email',
                'email.unique' => 'Email có người sử dụng',
                'password.required' => 'Vui lòng nhap password',
                're_password.same' => 'Mat khau khong giong nhau',
                'password.min' => 'Mat khau toi thieu 6 ky tu',
            ]
        );
        $user = new User();
        $user->email =$rq->email;
        $user->name = $rq->Ten;
        $user->phone = $rq->phone;
        $user->address = $rq->Diachi;
        $user->password= Hash::make($rq->password);
        $user->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');

    }
    public function getLogin()
    {
        return view('fontend.login');
    }
    public function postLogin(Request $rq)
    {
        $arr =['email' => $rq->email, 'password' => $rq->password];
        if($rq->remember ='Remember Me'){
            $remember =true;
        }else{
            $remember =false;
        }
        if(Auth::attempt($arr,$remember)){
            return redirect()->intended('/trangchu');
        }else{
            return back()->with('error','Tai khoan hay mật khẩu không đúng');
        }
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect('/trangchu');
    }
    public function getforgot()
    {
        return view('fontend.forgot');
    }
    public function postforgot(Request $request)
    {
        $email = $request->email;
        $user = User::where('email',$email)->first();

        if(!$user){
            return redirect()->back()->with(['error'=>'Email not exists']);
        }
        $code = bcrypt(Hash::make(time().$email));

        $user->code =$code;
        $user->time_code = Carbon::now();
        $user->save();

        $url =route('reset_password',['code'=>$user->code,'email'=>$email]);
        $data =[
           'route' => $url
        ];

        Mail::send('email.send_email', $data, function($message) use ($email){
	        $message->to($email,'reset')->subject('Lấy lại mật khẩu!');
	    });
        return redirect()->back()->with(['success'=>'Mat khau da duoc gui vao email']);
    }
    public function getReset(Request $request)
    {
        $code = $request->code;
        $email =$request->email;

        $user = User::where([
            'code' => $code,
            'email' => $email
        ])->first();

        if(!$user)
        {
            return redirect('/')->with('danger','Đường dẫn ko đúng, vui lòng thử lại');
        }
        return view('fontend.password_reset');
    }
    public function postReset(ResetPasswordRequest $request)
    {
          if($request->password)
          {
            $code = $request->code;
            $email =$request->email;
    
            $user = User::where([
                'code' => $code,
                'email' => $email
            ])->first();
    
            if(!$user)
            {
                return redirect('/')->with('danger','Đường dẫn ko đúng, vui lòng thử lại');
            }
            $user->password = bcrypt($request->password);
            $user->save();
            return redirect('dangnhap')->with('success','Mật khẩu đã dc đổi thành công');
          }
    }
}
