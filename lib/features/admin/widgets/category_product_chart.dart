// ignore_for_file: prefer_const_constructors

import 'package:fh2/features/admin/models/sales.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class CategoryProductChart extends StatelessWidget {
  final List<charts.Series<Sales, String>> seriesList;
  const CategoryProductChart({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: true,
      barRendererDecorator: charts.BarLabelDecorator<String>(
        labelPosition: charts.BarLabelPosition.inside,
      ),
      domainAxis: charts.OrdinalAxisSpec(),
    );
  }
}
