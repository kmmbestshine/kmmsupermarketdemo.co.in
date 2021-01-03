<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Advanced_Salary;
use App\Models\User;
use DB;

class AdvancedSalaryController extends Controller
{
	public function index()
    {
        $advanced_salaries = DB::table('advanced_salaries')->join('users', 'advanced_salaries.employee_id', '=', 'users.id')
        ->select('advanced_salaries.*','users.name')->orderBy('advanced_salaries.employee_id', 'asc')->get();
      //  dd($advanced_salaries);
        return view('backend.advanced_salary.index', compact('advanced_salaries'));
    }
    public function create()
    {
        $employees = DB::table('users')->get();
       // dd($employees);
        return view('backend.advanced_salary.create', compact('employees'));
    }

    public function store(Request $request)
    {
       

        $this->validate($request, [
            'employee_id' => 'required',
            'month' => 'required',
            'year' => 'required',
            'advanced_salary' => 'required',
        ]);
       

        $advanced_salary = DB::table('advanced_salaries')->where('employee_id', $request->employee_id)->where('month', $request->month)->where('year', $request->year)->first();
       // dd($advanced_salary);
        if (!$advanced_salary)
        {
            
             DB::table('advanced_salaries')->insert(
                array(
                'employee_id' => $request->input('employee_id'),
                'month' => $request->input('month'),
                'year' => $request->input('year'),
                'advanced_salary' => $request->input('advanced_salary'),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
                
                ));
            
            return redirect()->route('Advsalary.advsalary.create')->with('success_message', 'Advanced Salary Successfully Paid', 'Success!!!');

        } else {
           
            return redirect()->route('Advsalary.advsalary.create')->with('error_message', 'Advanced salary already paid for the employee', 'Error!!!');
        }


    }
    public function show($id)
    {
        $advanced_salary = DB::table('advanced_salaries')->where('advanced_salaries.id',$id)->join('users','advanced_salaries.employee_id','=','users.id')
        ->select('advanced_salaries.*','users.name')->first();
       // dd($advanced_salary);
        return view('backend.advanced_salary.show', compact('advanced_salary'));
    }
     public function edit($id)
    {
        $advanced_salary = DB::table('advanced_salaries')->where('advanced_salaries.id',$id)->join('employees','advanced_salaries.employee_id','=','employees.id')
        ->select('advanced_salaries.*','employees.name')->first();
        // dd($advanced_salary);
        return view('backend.advanced_salary.edit', compact('advanced_salary'));
    }
    public function update(Request $request)
    {
        $input = \Request::all();
        $advanced_salary = DB::table('advanced_salaries')->where('id',$request->adv_id)->first();
      
      if($request->month)
      {
        $month=$request->month;
      }else{
        $month=$advanced_salary->month;
      }
     // dd($input,$month);
         $message = DB::table('advanced_salaries')->where('id',$request->adv_id)->update([
                 'month' => $month,
                'year' => $request->year,
                'advanced_salary' => $request->advanced_salary,
                'updated_at' => date('Y-m-d H:i:s'),
                ]);
       
        if ($message) {
        return redirect()->route('backend.advanced_salary.index')->with('success_message', 'You are successfully Updated');
        } else {
            return redirect()->route('backend.advanced_salary.edit')->with('error_message', 'You can not Updated ');
        }
    }
    public function destroy($id)
    {
        //dd($id);
         $message = DB::table('advanced_salaries')->where('id',$id)->delete();
         if($message){
             
            return redirect()->route('backend.advanced_salary.index')->with('success_message', 'You are successfully Deleted');
        } else {
            return redirect()->route('backend.advanced_salary.index')->with('error_message', 'You can not Deleted ');
        }
    }
}
