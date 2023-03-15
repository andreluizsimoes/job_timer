import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProjectPieChart extends StatelessWidget {
  const ProjectPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.loose,
        children: [
          PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  value: 60,
                  color: theme.primaryColor,
                  showTitle: true,
                  title: '60h',
                  titleStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                PieChartSectionData(
                  value: 140,
                  color: theme.primaryColorLight,
                  showTitle: true,
                  title: '140h',
                  titleStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '200h',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: theme.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
