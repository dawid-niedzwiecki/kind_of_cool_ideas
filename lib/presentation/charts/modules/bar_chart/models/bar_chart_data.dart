import '../../../../../utils/common_imports.dart';

class BarChartData {
  const BarChartData({
    required this.color,
    required this.value,
    required this.label,
  });

  final Color color;
  final double value;
  final Widget label;

  BarChartData copyWith({
    Color? color,
    double? value,
    Widget? label,
  }) {
    return BarChartData(
      color: color ?? this.color,
      value: value ?? this.value,
      label: label ?? this.label,
    );
  }
}
