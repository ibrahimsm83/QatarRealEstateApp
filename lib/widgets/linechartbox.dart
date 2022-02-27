import 'package:bonyanaldoha/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class LineChartBox extends StatelessWidget {
  final List<String> ytitles;
  final List<String> xtitles;
  final List<FlSpot> spotsl;
  final List<Color> color;
  final List<Color> flcolor;
  final String Function(double)? getTitlesY;
  final String Function(double)? getTitlesX;

  LineChartBox({
    Key? key,
    this.getTitlesY,
    this.getTitlesX,
    this.color = const [],
    this.spotsl = const [],
    this.xtitles = const [],
    this.ytitles = const [],
    this.flcolor = const [],
  }) : super(key: key);
  List<Color> gradientColors = [
    primaryColor,
    //const Color(0xff23b6e6),
    //const Color(0xff02d39a),
    lightGreyColor
  ];
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        // minX: 0,
        // minY: 0,
        // maxX: xtitles.length - 1,
        // maxY: ytitles.length - 1,
        minX: 0,
        maxX: 13,
        minY: 0,
        maxY: 10,
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          //drawVerticalLine: true,
          getDrawingHorizontalLine: (_) => FlLine(
              strokeWidth: 0.1.w,
              color: Colors.grey // ProjectColors.gray.withOpacity(0.3),
              ),
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: SideTitles(showTitles: false),
          rightTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            //reservedSize: 32,
            // interval: ,
            //margin: 12,
            //reservedSize: 150,
            showTitles: true,
            getTitles: //(value) => xtitles[value.toInt()],
                (value) {
              switch (value.toInt()) {
                case 0:
                  return '19.00';
                case 2:
                  return '20.00';
                case 4:
                  return '21.00';
                case 6:
                  return '12.00';
                case 8:
                  return '23.00';
                case 10:
                  return '00.00';
                case 12:
                  return '01.00';
              }
              return '';
            },
            getTextStyles: (_, value) =>
                TextStyle(color: Colors.grey, fontSize: 9.sp

                    ///fontFamily: 'sansPro-semiBold',
                    // fontSize: (isTablet ? 12 : 10).mv,
                    ),
          ),
          leftTitles: SideTitles(
            // reservedSize: 80,
            interval: 1.0,
            showTitles: true,
            getTitles: //(value) => ytitles[value.toInt()],
                (value) {
              switch (value.toInt()) {
                case 10:
                  return '1.0';
                case 9:
                  return '0.9';
                case 8:
                  return '0.8';
                case 7:
                  return '0.7';
                case 6:
                  return '0.6';
                case 5:
                  return '0.5';
                case 4:
                  return '0.4';
                case 3:
                  return '0.3';
                case 2:
                  return '0.2';
                case 1:
                  return '0.1';
              }
              return '0';
            },
            getTextStyles: (_, value) =>
                TextStyle(color: Colors.grey, fontSize: 9.sp
                    // fontFamily: 'sansPro-semiBold',
                    // fontSize: (isTablet ? 12 : 10).mv,
                    ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
            top: BorderSide(
              width: 0.1.w,
              color: Colors.grey,
            ),
            bottom: BorderSide(
              width: 0.5.w,
              color: Colors.purple.shade400,
            ),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: spotsl,
            isCurved: true,
            barWidth: 4.0,
            colors: // flcolor,
                [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            isStrokeCapRound: true,
            dotData: FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              colors: //color,
                  gradientColors
                      .map((color) => color.withOpacity(0.3))
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
