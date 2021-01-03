@extends('backend.layouts.master')
@section('title')
    Make Sales Page
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('backend/plugins/select2.min.css')}}">
    <link  href="{{asset('backend/plugins/datepicker/datepicker.css')}}" rel="stylesheet">
@endsection
<!-- page content -->
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Sales Management </h3>
                </div>
                <div class="title_right">
                    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group top_search" style="padding-left: 95px;">
                            <div class="input-group">
                                <a href="{{route('sales.list')}}" class="btn btn-success">View Sales Report</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>

            @if(Session::has('success_message'))
                <div class="alert alert-success">
                    {{ Session::get('success_message') }}<div id="msg"></div>
                </div>
            @endif
            @if(Session::has('error_message'))
                <div class="alert alert-danger">
                    {{ Session::get('error_message') }}
                </div>
            @endif
            <div class="resp"></div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>sales Product</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <form id="btnSave" action="{{route('sales.store')}}" method="POST">
                                {{ csrf_field()}}
                                <div class="row">
                    <div class="col-md-8">
                        <div id="client" class="form-group">
                            <label for="">Customer ID</label>
                            <div class="row">
                                <div class="col-md-6">
                                    <input type="text" name="customer_id" placeholder="Enter Cust ID" class="form-control text-center"  required>
                                   
                                </div>
                                <div class="col-md-4">
                                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal"
                                        onclick="openForm()">New Customer</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Sale No : </label>
                            <input type="text" name="number_sale" class="form-control text-center" value="" readonly>
                        </div>
                    </div>
                </div>
                            <div class="form-group">
                                <label for="product_id">Chose Product</label>
                                <select class="form-control js-example-basic-single" id="product_id" name="product_id" data-placeholder="--Search Product--" required>
                                </select>
                                <span class="error"><b>
                                       @if($errors->has('product_id'))
                                            {{$errors->first('product_id')}}
                                       @endif</b>
                                    </span>
                            </div>
                            <div class="form-group">
                                <label for="quantity">Stock Available</label>
                                <input type="number" class="form-control" id="stock" name="stock" placeholder="Stock Available" disabled>
                                <span class="error"><b>
                                         @if($errors->has('stock'))
                                            {{$errors->first('stock')}}
                                         @endif</b></span>
                            </div>
                            <div class="form-group">
                                <label for="price">Price per/pices*</label>
                                <input type="number" class="form-control" name="price" id="price" placeholder="price" required>
                                <span class="error"><b>
                                         @if($errors->has('price'))
                                            {{$errors->first('price')}}
                                         @endif</b></span>
                            </div>
                            <div class="form-group">
                                <label for="gst_percent">GST / Tax Rate*</label>
                                <input type="text" class="form-control" name="gst_percent" id="gst_percent" placeholder="gst_percent" >
                                <span class="error"><b>
                                         @if($errors->has('gst_percent'))
                                            {{$errors->first('gst_percent')}}
                                         @endif</b></span>
                            </div>
                            <div class="form-group">
                                <label for="sales_quantity">Sales Quantity</label>
                                <input type="number" min="1" value="1" class="form-control" id="sales_quantity" name="sales_quantity" placeholder="Quantity" required>
                                <span class="error"><b>
                                         @if($errors->has('sales_quantity'))
                                            {{$errors->first('sales_quantity')}}
                                         @endif</b></span>
                            </div>
                            <div class="form-group">
                                <label for="sales_quantity">Warrenty</label>
                            <div style="overflow: hidden">
                                    <div style="border:2px solid #cccccc; float:left; padding-bottom:1000px; margin-bottom:-1000px" >
                                        
                                        <select id = "warrenty" name="warrenty" onchange = "ShowHideDiv1()" >
                                           <option value="N" selected>No</option>
                                           <option value="Y">Yes</option>
                                           <!-- <option value="N" >Quote</option>-->
                                        </select>
                                    </div>
                                    
                                    <div style="border:1px solid #cccccc; float:right; padding-bottom:1000px; margin-bottom:-1000px">
                                        <div id="dvPassport1" style="display: none">
                                         <!--   <input class="form-control numeric-p8d2" type="text" id="txtPassportNumber1" name="amountdiscount" value=0.00 /> -->
                                         <label for="birthday">Start     :</label>    {{date("d-m-Y")}}
                                        <br>
                                        <br>
                                        <label for="txtPassportNumber1">End:</label>
                                        <input type="date" id="txtPassportNumber1" name="warentyEnd">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Sales Status:- &nbsp;</label>
                                <input type="radio" name="sales_status" value="1" id="Active" checked=""><label for="Active"> Cash Sales </label>
                                <input type="radio" name="sales_status" id="deactive" value="0"><label for="deactive"> Credit Sales </label>
                            </div>
                            <input type="hidden" name="birthday_status" value="0">
                            <input type="hidden" name="dob" value="2017-">
                            <input type="hidden" name="phone" value="977-">
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" name="btnSave" class="btn btn-primary"> Make QuickSales </button>
                            </div>
                            </form>
                            <br><br>
                            <div id="saleslist">

                            </div>
                            <div id="ajaxform">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
    <div class="form-popup" id="myForm" >
    
  <form action="{{route('customer.store')}}" class="form-container" method="post">
    {{ csrf_field() }}

    <div class="form-group">
                                    <label for="name">Name*</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
                                    <span class="error"><b>
                                           @if($errors->has('name'))
                                                {{$errors->first('name')}}
                                            @endif</b>
                                     </span>
                                </div>
    <div class="form-group">
                                    <label for="cust_id">Customer ID*</label>
                                    <input type="text" class="form-control" id="cust_id" name="cust_id" placeholder="Enter Customer ID">
                                    <span class="error"><b>
                                           @if($errors->has('cust_id'))
                                                {{$errors->first('cust_id')}}
                                            @endif</b>
                                     </span>
                                </div>
    <div class="form-group">
                                    <label for="mobile">Mobile*</label>
                                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile No">
                                    <span class="error"><b>
                                           @if($errors->has('mobile'))
                                                {{$errors->first('mobile')}}
                                            @endif</b>
                                     </span>
                                </div>
    <label for="gsttin">GST No</label>
    <input type="text" class="form-control" id="gsttin" name="gsttin" placeholder="Enter GST No">
    <label for="email">Email</label>
    <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email">
    <div class="form-group">
                                    <label for="address">Address*</label>
                                    <input type="text" class="form-control" id="address" name="address" placeholder="Enter Address">
                                    <span class="error"><b>
                                           @if($errors->has('address'))
                                                {{$errors->first('address')}}
                                            @endif</b>
                                     </span>
                                </div>
    <label for="landmark">Land Mark</label>
    <input type="text" class="form-control" id="landmark" name="landmark" placeholder="Enter Land Mark">
    <label>Status</label>
    <input type="radio" name="status" value="1" id="Active" checked=""><label for="Active"> Active</label>
    <input type="radio" name="status" id="deactive" value="0"><label for="deactive">DeActive</label>
    
    <div class="form-group">
        <input type="hidden" name="sale" value="dashboard" >
        <button type="submit" class="btn">Login</button>
        <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
    </div>
  </form>
</div>
@endsection
@section('script')
<script >
function openForm() {
    alert('ggggg');
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

<script type="text/javascript">
    function ShowHideDiv1() {
        var warrenty = document.getElementById("warrenty");
        var dvPassport1 = document.getElementById("dvPassport1");
        dvPassport1.style.display = warrenty.value == "Y" ? "block" : "none";
        dvPassport1.style.display = warrenty.value == "N" ? "none" : "block";
        
    }
</script>
    <script type="text/javascript" src="{{asset('backend/plugins/jquery.dataTables.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#categorytable').DataTable();
        });
    </script>
    <script src="{{asset('backend/plugins/select2.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".js-example-basic-single").select2();
        });
    </script>
    <script src="{{asset('backend/plugins/datepicker/datepicker.js')}}"></script>
    <script type="text/javascript">
        $('[data-toggle="start"]').datepicker({
            format: 'yyyy-mm-dd'
        });

        $('[data-toggle="end"]').datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#product_id').on('change', function () {
                var prdid = $(this).val();
                var path = 'getquantity';
                $.ajax({
                    url: path,
                    method: 'post',
                    data: {'product_id': prdid, '_token': $('input[name=_token]').val()},
                    dataType: 'text',
                    success: function (resp) {
                        console.log(resp);
                        $('#quantity').empty();
                        $('#stock').val(resp);
                    }
                });

            });
            $('#product_id').on('change', function () {
                var prdid = $(this).val();
                //alert(prdid);
                var path = 'gettaxrate';
                $.ajax({
                    url: path,
                    method: 'post',
                    data: {'product_id': prdid, '_token': $('input[name=_token]').val()},
                    dataType: 'text',

                    success: function (resp) {
                        console.log(resp);

                        //$('#quantity').empty();

                        $('#gst_percent').val(resp);
                    }
                });

            });
            $('#product_id').on('change', function () {
                var prdid = $(this).val();
                var path = 'getprice';
                $.ajax({
                    url: path,
                    method: 'post',
                    data: {'product_id': prdid, '_token': $('input[name=_token]').val()},
                    dataType: 'text',
                    success: function (resp) {
                        console.log(resp);
                        $('#price').empty();
                        $('#price').val(resp);
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $.ajaxSetup({
                headers: {
                    'X-CRF-TOKEN': $('meat[name = "csrf-token"]').attr('content')
                }
            });
            $('#btnSave').on('submit', function (e) {
                e.preventDefault();
                var url = $(this).attr('action');
                var post = $(this).attr('method');
                var data = $(this).serialize();
                $.ajax({
                    url: url,
                    type: post,
                    data: data,
                    success: function (data) {
                        refreshproduct();
                        readsales();
                        ajaxform();
                        var m = "<div class='alert alert-success'>" + data.success_message + "</div>";
                       // alert(data.success_message);
                        $('.resp').html(m);
                        document.getElementById("btnSave").reset();
                    }
                });
            });
        });
        readsales();
        refreshproduct();
        ajaxform();
        function readsales() {
            $.ajax({
                type: 'get',
                url: "{{url('ajaxsales-list')}}",
                dataType: 'html',
                success: function (data) {
                    $('#saleslist').html(data);
                }
            })
        }
        function ajaxform() {
            $.ajax({
                type: 'get',
                url: "{{url('ajax-form')}}",
                dataType: 'html',
                success: function (data) {
                    $('#ajaxform').html(data);
                }
            })
        }
        function refreshproduct() {
            $.ajax({
                type: 'get',
                url: "{{url('refresh-product')}}",
                dataType: 'html',
                success: function (data) {
                    $('#product_id').html(data);
                }
            })
        }
        function printorder() {
                $.ajax({
                    url: "{{url('sales-allpdf')}}",
                    type: 'get',
                    dataType: 'html',
                    success:function(data) {
                        var mywindow = window.open('', 'Sabaiko Live Bakery', 'height=400,width=600');
                        mywindow.document.write('<html><head><title></title>');
                        mywindow.document.write('</head><body>');
                        mywindow.document.write(data);
                        mywindow.document.write('</body></html>');
                        mywindow.document.close();
                        mywindow.focus();
                        mywindow.print();
                        mywindow.close();

                    }
                });
        }

    </script>
@endsection