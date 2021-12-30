@extends('layouts.app')
@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-6">
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>{{count($donhang)}}</h3>
                        <p>Đơn hàng mới</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{route('admin.donhang.moi')}}" class="small-box-footer">Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="small-box bg-success">
                    <div class="inner">
                    <h3>53<sup style="font-size: 20px">%</sup></h3>

                    <p>Bounce Rate</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="#" class="small-box-footer"> Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="small-box bg-warning">
                    <div class="inner">
                    <h3>{{count($user)}}</h3>

                    <p>Đăng ký người dùng</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-person-add"></i>
                    </div>
                    <a href="#" class="small-box-footer">Xem thêm  <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="small-box bg-danger">
                    <div class="inner">
                    <h3>65</h3>
                    <p>Số lượng khách truy cập </p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                    </div>
                    <a href="#" class="small-box-footer">Xem thêm  <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div> 
    </div>
</section>
<div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
                <div class="card-header border-0">
                  <h3 class="card-title">Sản phẩm hết hàng</h3>
                  <div class="card-tools">
                    <a href="#" class="btn btn-tool btn-sm">
                      <i class="fas fa-download"></i>
                    </a>
                    <a href="#" class="btn btn-tool btn-sm">
                      <i class="fas fa-bars"></i>
                    </a>
                  </div>
                </div>
                <div class="card-body table-responsive p-0">
                  <table class="table table-striped table-valign-middle">
                    <thead>
                      <tr>
                          <th>Tên sản phẩm</th>
                          <th>Giá</th>
                      </tr>
                    </thead>
                    <tbody>
                          @foreach($sanpham as $value)
                          <tr>
                              <td>{{$value->tensanpham}}</td>
                              <td>{{ number_format($value->dongia)}} </td> 
                          </tr>  
                          @endforeach              
                    </tbody>
                  </table>
                </div>
              </div>          
            </div>
            
            <div class="col-lg-6">
              <div class="card">
                <div class="card-header border-0">
                  <div class="d-flex justify-content-between">
                    <h3 class="card-title">Doanh thu</h3>
                    <a href="javascript:void(0);">View Report</a>
                  </div>
                </div>
                  <?php
 
                  $dataPoints1 = array(
                    array("label"=> "2006", "y"=> 3289),
                    array("label"=> "2007", "y"=> 5312),
                    array("label"=> "2008", "y"=> 11020),
                    array("label"=> "2009", "y"=> 16854),
                    array("label"=> "2010", "y"=> 30505),
                    array("label"=> "2011", "y"=> 52764),
                    array("label"=> "2012", "y"=> 70513),
                    array("label"=> "2013", "y"=> 81488),
                    array("label"=> "2014", "y"=> 88636),
                    array("label"=> "2015", "y"=> 95092),
                    array("label"=> "2016", "y"=> 103000)
                  );
                  
                  $dataPoints2 = array(
                    array("label"=> "2006", "y"=> 1827),
                    array("label"=> "2007", "y"=> 2098),
                    array("label"=> "2008", "y"=> 2628),
                    array("label"=> "2009", "y"=> 3373),
                    array("label"=> "2010", "y"=> 4951),
                    array("label"=> "2011", "y"=> 7513),
                    array("label"=> "2012", "y"=> 12159),
                    array("label"=> "2013", "y"=> 21992),
                    array("label"=> "2014", "y"=> 34991),
                    array("label"=> "2015", "y"=> 50776),
                    array("label"=> "2016", "y"=> 68000)
                  );
                  
                  
                  
                  ?>
                  
                  <script>
                  window.onload = function () {
                  
                  var chart = new CanvasJS.Chart("chartContainer", {
                    title: {
                      text: "Growth of Solar Photovoltaics"
                    },
                    theme: "light2",
                    animationEnabled: true,
                    toolTip:{
                      shared: true,
                      reversed: true
                    },
                    axisY: {
                      title: "Cumulative Capacity",
                      suffix: " MW"
                    },
                    legend: {
                      cursor: "pointer",
                      itemclick: toggleDataSeries
                    },
                    data: [
                      {
                        type: "stackedColumn",
                        name: "Europe",
                        showInLegend: true,
                        yValueFormatString: "#,##0 MW",
                        dataPoints: <?php echo json_encode($dataPoints1, JSON_NUMERIC_CHECK); ?>
                      },{
                        type: "stackedColumn",
                        name: "Asia-Pacific",
                        showInLegend: true,
                        yValueFormatString: "#,##0 MW",
                        dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
                      }
                    ]
                  });
                  
                  chart.render();
                  
                  function toggleDataSeries(e) {
                    if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                      e.dataSeries.visible = false;
                    } else {
                      e.dataSeries.visible = true;
                    }
                    e.chart.render();
                  }
                  
                  }
                  </script>
                  <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                      
              </div>


            </div>
        </div>
      </div>
    </div>
  </div>
@endsection
