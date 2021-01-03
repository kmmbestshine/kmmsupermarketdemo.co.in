<?php

namespace App\Http\Controllers\backend;

use App\Models\Role;
use App\Models\UserRole;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Session;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('backend.user.login');
    }


    public function userlist()
    {
        $users = User::join('user_roles', 'user_roles.user_id', '=', 'users.id')
        ->join('roles', 'roles.id', '=', 'user_roles.role_id')
        ->select('users.*','roles.name as role_name')->get();
        return view('backend.user.list', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->checkpermission('user-register');
        $role = Role::all();
        return view('backend.user.create', compact('role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'username' => 'required|unique:users|min:5|max:30',
            'password' => 'required|min:8|max:20',
            'role' => 'required',
        ]);
        $message = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'remember_token' => $request->password,
            'status' => $request->status,
            'salary' => $request->salary,
            'created_at' => date('Y-m-d H:i:s'),
        ]);
        if ($message) {
            UserRole::create([
                'role_id' => $request->role,
                'user_id' => $message->id
            ]);
            return redirect()->route('user.register')->with('success_message', 'You are successfully register');
        } else {
            return redirect()->route('user.register')->with('error_message', 'You can not register ');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request , $id)
    {
        $users = User::join('user_roles', 'user_roles.user_id', '=', 'users.id')
        ->join('roles', 'roles.id', '=', 'user_roles.role_id')
        ->where('users.id',$id)->select('users.*','roles.name as role_name','roles.id as role_id')->first();

       // dd($users);
        return view('backend.user.edit', compact('users'));
       
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $input=\Request::all();
      
       
        //dd($input,$id);
        $message = User::where('id',$id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'remember_token' => $request->password,
            'status' => $request->status,
            'salary' => $request->salary,
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        if ($message) {
          //  UserRole::create([
              //  'role_id' => $request->role,
              //  'user_id' => $message->id
          //  ]);
            return redirect()->route('user.list')->with('success_message', 'You are successfully Updated');
        } else {
            return redirect()->route('user.edit')->with('error_message', 'You can not update ');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       // dd($id);
        $user = User::find($id);
        $user->delete();
        if ($user) {
            
            return redirect()->route('user.list')->with('success_message', 'You are successfully Deleted');
        } else {
            return redirect()->route('user.list')->with('error_message', 'You can not register ');
        }
       // DB::table('role_modules')->where('id',$per_id->id)->delete();
    }
    public function login(Request $request)
    {
        $this->validate($request, [
            'username' => 'required',
            'password' => 'required',
        ]);
        if (Auth::attempt(['username' => $request->username, 'password' => $request->password])) {
            Auth::user()->last_login = date('Y-m-d H:i:s');
            Auth::user()->save();
            return redirect()->route('user.dashboard')->with('success_message', 'You are success fully loged In');
        } else {
            return redirect()->route('user.login')->with('error_message', 'Invalid Username or Password');
        }
    }

    public function logout()
    {
        Auth::logout();
        Session::flash('success_message', 'Successfully Loged Out');
        return redirect()->route('user.login');

    }

    /*
     * Load view of password change
     */
    public function changepassword()
    {
        $this->checkpermission('password-change');
        return view('backend.user.changepassword');
    }

    /*
     * perform password change action using secure Hash::check function
     */
    public function changesave(Request $request)
    {
        $this->validate($request, [
            'oldpassword' => 'required',
            'newpassword' => 'required|min:8',
            'confirmpassword' => 'required|same:newpassword'
        ]);
        $user = User::find(Auth::user()->id);
        if (Hash::check($request->oldpassword, $user->password)) {
            $user->password = bcrypt($request->newpassword);
            $user->update();
            return redirect()->back()->with('success_message', 'Successfully Change your Password');
        } else {
            return redirect()->back()->with('error_message', 'Your Old password is Wrong');
        }
    }

}
