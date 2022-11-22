import '../../../../../utils/common_imports.dart';

class BarPainter extends CustomPainter {
  BarPainter({
    required this.mainColor,
    required this.percentage,
  }) {
    lightColor = mainColor.lighten();
    darkColor = mainColor.darken();
  }

  final Color mainColor;
  final double percentage;

  late final Color lightColor;
  late final Color darkColor;

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final e = width * 2 / 3;
    final barHeight = (size.height - e) / 100 * percentage;

    final rightPaint = Paint()
      ..color = mainColor
      ..strokeWidth = 0
      ..style = PaintingStyle.fill;

    final rightPath = Path()
      ..moveTo(width / 2, height - barHeight)
      ..lineTo(width, height - barHeight - (e / 2))
      ..lineTo(width, height - e / 2)
      ..lineTo(width / 2, height)
      ..close();

    final leftPaint = Paint()
      ..color = darkColor
      ..strokeWidth = 0
      ..style = PaintingStyle.fill;

    final leftPath = Path()
      ..moveTo(width / 2, height - barHeight)
      ..lineTo(width / 2, height)
      ..lineTo(0, height - e / 2)
      ..lineTo(0, height - barHeight - (e / 2))
      ..close();

    final topPaint = Paint()
      ..color = lightColor
      ..strokeWidth = 0
      ..style = PaintingStyle.fill;

    final topPath = Path()
      ..moveTo(width / 2, height - barHeight)
      ..lineTo(0, height - barHeight - (e / 2))
      ..lineTo(width / 2, height - barHeight - e)
      ..lineTo(width, height - barHeight - (e / 2))
      ..close();

    canvas
      ..drawPath(rightPath, rightPaint)
      ..drawPath(leftPath, leftPaint)
      ..drawPath(topPath, topPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
