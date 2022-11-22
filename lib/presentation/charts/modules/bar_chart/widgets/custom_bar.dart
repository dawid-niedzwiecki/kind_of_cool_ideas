import '../../../../../utils/common_imports.dart';
import '../../../charts.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
    super.key,
    required this.width,
    required this.color,
    required this.percentage,
    this.label,
  }) : assert(
          percentage >= 0 && percentage <= 100,
          'Percentage must be between 0 and 100. Was: $percentage',
        );

  final double width;
  final Color color;
  final double percentage;
  final Widget? label;

  static const double _padding = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            width: width,
            child: CustomPaint(
              painter: BarPainter(
                mainColor: color,
                percentage: percentage,
              ),
            ),
          ),
        ),
        if (label != null) ...[
          const SizedBox(height: _padding),
          SizedBox(
            width: width,
            child: label,
          ),
        ],
      ],
    );
  }
}
