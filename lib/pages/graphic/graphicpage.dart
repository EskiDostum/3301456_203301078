import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilprogramlamaodev/models/graphic_info.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// code düzenlenmiştir ve veri ekleme yapılmıştır
class GraphicPage extends StatelessWidget {
  const GraphicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 360.w,
            child: SfCartesianChart(
              plotAreaBorderWidth: 0,
              title: ChartTitle(
                  text: 'Ülkelerin Enflasyon Oranları ',
                  textStyle: const TextStyle(fontSize: 15)), // yeni widget
              legend: Legend(overflowMode: LegendItemOverflowMode.wrap),
              // x değeri olarak alt ve üst sınır
              primaryXAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  majorGridLines: const MajorGridLines(width: 0),
                  interval: 2),
              // y değeri olarak alt ve üst sınır
              primaryYAxis: NumericAxis(
                  minimum: 0,
                  maximum: 21,
                  labelFormat: '{value}%',
                  axisLine: const AxisLine(width: 0),
                  majorTickLines:
                      const MajorTickLines(color: Colors.transparent)),
              series: _getDefaultLineSeries(),
              tooltipBehavior: TooltipBehavior(enable: true),
            ),
          ),
          // ilk şehir
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.yellowAccent,
                  ),
                  const Text("Alamanya"),
                ],
              ),
              // ikinci ülke
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.blueAccent,
                  ),
                  const Text("İngiltere"),
                ],
              ),
              // üçüncü ülke
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.blueGrey,
                  ),
                  const Text("Fransa"),
                ],
              ),
              // 4.cü ülke
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.red,
                  ),
                  const Text("Türkiye"),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.black,
                  ),
                  const Text("Eski Dostum Krallığı "),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

List<LineSeries<Graphicinfo, num>> _getDefaultLineSeries() {
  return <LineSeries<Graphicinfo, num>>[
    LineSeries<Graphicinfo, num>(
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (Graphicinfo sales, _) => sales.x,
        yValueMapper: (Graphicinfo sales, _) => sales.y,
        width: 2,
        name: 'Alamanya',
        markerSettings: const MarkerSettings(isVisible: true),
        color: Colors.yellowAccent),
    LineSeries<Graphicinfo, num>(
        animationDuration: 2500,
        dataSource: chartData,
        width: 2,
        name: 'Ingiltere',
        xValueMapper: (Graphicinfo sales, _) => sales.x,
        yValueMapper: (Graphicinfo sales, _) => sales.y2,
        markerSettings: const MarkerSettings(isVisible: true),
        color: Colors.blueAccent),
    LineSeries<Graphicinfo, num>(
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (Graphicinfo sales, _) => sales.x,
        yValueMapper: (Graphicinfo sales, _) => sales.y3,
        width: 2,
        name: 'Fransa',
        markerSettings: const MarkerSettings(isVisible: true),
        color: Colors.blueGrey),
    LineSeries<Graphicinfo, num>(
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (Graphicinfo sales, _) => sales.x,
        yValueMapper: (Graphicinfo sales, _) => sales.y4,
        width: 2,
        name: 'Turkiye',
        markerSettings: const MarkerSettings(isVisible: true),
        color: Colors.red),
    LineSeries<Graphicinfo, num>(
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (Graphicinfo sales, _) => sales.x,
        yValueMapper: (Graphicinfo sales, _) => sales.y5,
        width: 2,
        name: 'Eski Dostum Krallığı ',
        markerSettings: const MarkerSettings(isVisible: true),
        color: Colors.black),
  ];
}
//  LineSeries<Graphicinfo, num>(
//         animationDuration: 2500, // bekletme süresi
//         dataSource: chartData, //  değerleri çekiyor
//         xValueMapper: (Graphicinfo sales, _) => sales.x,// grafik üzerinde y değerlerini yazıyor
//         yValueMapper: (Graphicinfo sales, _) => sales.y, // grafik üzerinde x x1 x2 x3 değerlerini yazıyor
//         width: 2,
//         name: 'Alamanya',
//         markerSettings: const MarkerSettings(isVisible: true)), // günlük kriptoya baktığında sana tarih isim ve değer kazancı tarzında verileri söyleyen şeyleri aktif ediyor
