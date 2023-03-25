import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../utils/constants.dart';

class DashboardPage extends StatelessWidget {

  List<_SalesData> data = [
    _SalesData('12', 35),
    _SalesData('3', 28),
    _SalesData('6', 34),
    _SalesData('9', 32),
    _SalesData('11', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          "Dashboard",
          style: text25Bold(white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20.w,right: 10.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15.h,),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("19",style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20.sp
                          ),),
                          Text("Challanges \n Complete",style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white
                          ),)
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text("19",style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 20.sp
                          ),),
                          Text("Challanges \n Complete",style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white
                          ),)
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text("19",style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 20.sp
                          ),),
                          Text("Challanges \n Complete",style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chess Playing",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp
                          ),),
                          Text("76% loading",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp
                          ),),
                          Divider(color: Colors.amberAccent,)
                        ],
                      ),
                      Container(
                        height: 36.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.w)
                        ),
                        child: Center(
                          child: Text("Continue",style: TextStyle(
                            color: Colors.yellow
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Total Activity",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),),
                ),
                SizedBox(height: 10.h,),
                SfCartesianChart(
                    plotAreaBorderWidth: 0,
                    primaryYAxis: NumericAxis(
                        majorGridLines:
                        const MajorGridLines(width: 0),
                        axisLine: const AxisLine(width: 0)),
                    primaryXAxis: CategoryAxis(
                      majorGridLines: const MajorGridLines(width: 0),
                      axisLine: const AxisLine(width: 0),
                    ),
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <ChartSeries<_SalesData, String>>[
                      StackedColumn100Series<_SalesData, String>(
                          dataSource: data,
                          xValueMapper: (_SalesData sales, _) => sales.year,
                          yValueMapper: (_SalesData sales, _) => sales.sales,
                          name: 'Sales',
                          ),
                      StackedColumn100Series<_SalesData, String>(
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Sales',
                      ),
                    ]),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}