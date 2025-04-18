@extends('Admin.layout')
@section('pagetitle',__('trans.dashboardTitle'))

@section('content')

    
        <div class="row">
            <div class="wrapper">
                <div class="content-page">
                    <!-- Start content -->
                    <div class="content">
                        <div class="">
                            <div class="row">

                                <div class="col-md-6 col-lg-3 my-2">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="bg-icon bg-icon-info text-center">
                                                <i class="fa-regular fa-handshake h1"></i>
                                            </div>
                                        </div>
                                        <div class="text-right col-6">
                                            <h3 class="text-dark"><b class="counter">{{ $parteners }}</b></h3>
                                            <p class="text-muted">@lang('trans.partners')</p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-2">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="bg-icon bg-icon-info text-center">
                                                <i class="fa-solid fa-chart-simple h1"></i>
                                            </div>
                                        </div>
                                        <div class="text-right col-6">
                                            <h3 class="text-dark"><b class="counter">{{ $statistics }}</b></h3>
                                            <p class="text-muted">@lang('trans.statistics')</p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-2">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="bg-icon bg-icon-info text-center">
                                                <i class="fa-solid fa-stairs h1"></i>
                                            </div>
                                        </div>
                                        <div class="text-right col-6">
                                            <h3 class="text-dark"><b class="counter">{{ $step_successes }}</b></h3>
                                            <p class="text-muted">@lang('trans.StepSuccess')</p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-2">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="bg-icon bg-icon-info text-center">
                                                <i class="fa-solid fa-bell-concierge h1"></i>
                                            </div>
                                        </div>
                                        <div class="text-right col-6">
                                            <h3 class="text-dark"><b class="counter">{{ $Service }}</b></h3>
                                            <p class="text-muted">@lang('trans.services')</p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-2">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="bg-icon bg-icon-info text-center">
                                                <i class="fa-solid fa-users h1"></i>
                                            </div>
                                        </div>
                                        <div class="text-right col-6">
                                            <h3 class="text-dark"><b class="counter">{{ $admins }}</b></h3>
                                            <p class="text-muted">@lang('trans.admins')</p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        

                {{-- <div class="content-page">
                    <h3 class="portlet-title text-dark">@lang('trans.UsersByDay')</h3>
                    <div id="UsersByDay" style="height: 370px; width: 100%;"></div>
                </div>
                <div class="content-page">
                    <h3 class="portlet-title text-dark">@lang('trans.ordersByDay')</h3>
                    <div id="ordersByDay" style="height: 370px; width: 100%;"></div>
                </div>
                
                <div class="content-page">
                    <h3 class="portlet-title text-dark">@lang('trans.ordersByMonth')</h3>
                    <div id="ordersByMonth" style="height: 370px; width: 100%;"></div>
                </div> --}}
                
            </div>
        </div>
        
@endsection


{{-- @push('js')

        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <script>
    

    
                var chartOrders = new CanvasJS.Chart("ordersByDay", {
                    animationEnabled: true,
                    theme: "light1",
                    data: [{
                        type: "line",
                        indexLabelFontSize: 16,
                        dataPoints: <?php echo json_encode($chartOrders, JSON_NUMERIC_CHECK); ?>
                    }]
                });
                chartOrders.render();
                
                var chartUsers = new CanvasJS.Chart("UsersByDay", {
                    animationEnabled: true,
                    theme: "light1",
                    data: [{
                        type: "line",
                        indexLabelFontSize: 16,
                        dataPoints: <?php echo json_encode($chartUsers, JSON_NUMERIC_CHECK); ?>
                    }]
                });
                chartUsers.render();
                
                var chartChanges = new CanvasJS.Chart("ordersByMonth", {
                    animationEnabled: true,
                    theme: "light1",
                    data: [{
                        type: "line",
                        indexLabelFontSize: 16,
                        dataPoints: <?php echo json_encode($chartChanges, JSON_NUMERIC_CHECK); ?>
                    }]
                });
                chartChanges.render();
    
        </script>

@endpush

@push('css')
    <style>
        .logoContainer{
            position: relative;
            background: lightgrey;
        }
        .logoContainer{
            position: relative;
        }
        .vertical-center {
            margin: 0;
            position: relative;
            top: 50%;
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
        }
        .progressText{
            {{ auth()->user()->theme == 1 ? 'fill: black;' : 'fill: white;' }}
        }

        .dataTables_wrapper {
            overflow-x: scroll;
        }
        .stats {
          margin: 5px;
        }
        .stats .col {
          //border: 1px solid red;
          margin: 0;
          padding: 3;
        }
        .statContainer {
          margin: 5px;
          width: 100%;
          font-size: 13px;
          border-radius: 3px;
          background-color: #fff !important;
          padding: 0;
          overflow: hidden;
        }
        .statContainer .title {
          padding: 5px 10px;
          color: #fff !important;
        }
        .statContainer.red .title {
          background-color: red !important;
        }
        .statContainer.red .status {
          color: red !important;
        }
        .statContainer.blue .title {
          background-color: #2d72c0 !important;
        }
        .statContainer.blue .status {
          color: #2d72c0 !important;
        }

        .statContainer.yellow .title {
          background-color: #f3a254 !important;
        }
        .statContainer.yellow .status {
          color: #f3a254 !important;
        }

        .statContainer.fountainBlue .title {
          background-color: #6abebf !important;
        }
        .statContainer.fountainBlue .status {
          color: #6abebf !important;
        }

        .statContainer.lightBlue .title {
          background-color: #52a1e5 !important;
        }
        .statContainer.lightBlue .status {
          color: #52a1e5 !important;
        }

        .statContainer.purple .title {
          background-color: #916df6 !important;
        }
        .statContainer.purple .status {
          color: #916df6 !important;
        }

        .statContainer.pink .title {
          background-color: #ef6e85 !important;
        }
        .statContainer.pink .status {
          color: #ef6e85 !important;
        }

        .statContainer.orange .title {
          background-color: #ff7043 !important;
        }
        .statContainer.orange .status {
          color: #ff7043 !important;
        }

        .pi {
            width: 200px;
            height: 200px;
            border: 2px solid green;
            border-radius: 50%;
            position: relative;
            left: 25em;
        }

        #innercircle {
            width: 110px;
            height: 110px;
            border: 1px solid white;
            border-radius: 50%;
            background-color: white !important;
            position: absolute;
            top: 22%;
            left: 22%;
        }

        .flot-chart>ul {
            list-style-type: none;
            position: relative;
            left: -1em;
            bottom: 2em;
        }

        #platform li {
            font-size: 1.3em;
        }

        #platform li:nth-child(1)::before {
            font-size: 2em;
            content: "• ";
            color: red;
            vertical-align: middle;
        }

        #platform li:nth-child(2)::before {
            font-size: 2em;
            content: "• ";
            color: green;
            vertical-align: middle;
        }

        #platform li:nth-child(3)::before {
            font-size: 2em;
            content: "• ";
            color: blue;
            vertical-align: middle;
        }


        #payment li {
            font-size: 1.3em;
        }

        #payment li:nth-child(1)::before {
            font-size: 2em;
            content: "• ";
            color: DarkGray;
            vertical-align: middle;
        }

        #payment li:nth-child(2)::before {
            font-size: 2em;
            content: "• ";
            color: black;
            vertical-align: middle;
        }

        #payment li:nth-child(3)::before {
            font-size: 2em;
            content: "• ";
            color: brown;
            vertical-align: middle;
        }

        .chart {
            width: 100%;
            height: 370px; width: 100%;
            display: block;
            margin: auto;
        }

        .numbers {
            color: #fff;
            margin: 0;
            padding: 0;
            width: 50px;
            height: 100%;
            display: inline-block;
            float: left;
            position: relative;
        }

        .numbers li {
            list-style: none;
            height: 150px;
            position: relative;
            bottom: 145px;
        }

        .numbers span {
            font-size: 12px;
            font-weight: 600;
            position: absolute;
            bottom: 0;
            right: -23vw;
            color: #555;
        }

        .bars {
            color: #fff;
            font-size: 12px;
            font-weight: 600;
            /*background: #555;*/
            background-image: url('./include/squares.jpg');
            background-size: cover;
            background-repeat: no-repeat;

            /*margin: 0;*/
            /*padding: 0;*/
            display: inline-block;
            /*width: 500px;*/
            width: max-content;
            margin: auto;
            height: 370px; width: 100%;
            /*overflow-x: auto;*/
            box-shadow: 0 0 10px 0 #555;
            border-radius: 5px;
        }

        .bars li {
            display: table-cell;
            width: 100px;
            height: 370px; width: 100%;
            position: relative;
        }

        .bars span {
            width: 100%;
            position: absolute;
            bottom: -30px;
            left: 3px;
            text-align: center;
            color: #555;
        }

        .bars .bar {
            display: block;
            background: #000;
            width: 50px;
            position: absolute;
            bottom: 0;
            margin-left: 25px;
            text-align: center;
            box-shadow: 0 0 10px 0 rgba(23, 192, 235, 0.5);
            transition: 0.5s;
            transition-property: background, box-shadow;
        }

        .bars .bar:hover {
            background: #55EFC4;
            box-shadow: 0 0 10px 0 rgba(85, 239, 196, 0.5);
            cursor: pointer;
        }

        .bars .bar:before {
            color: #000;
            content: attr(data-percentage) '%';
            position: relative;
            bottom: 20px;
        }

    </style>
@endpush --}}




