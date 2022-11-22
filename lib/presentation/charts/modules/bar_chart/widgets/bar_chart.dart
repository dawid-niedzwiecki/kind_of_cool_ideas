import '../../../../../utils/common_imports.dart';
import '../../../charts.dart';

class BarChart extends StatefulWidget {
  BarChart({
    super.key,
    required this.barChartData,
    this.padding = 10,
    double? maximum,
  }) : assert(
          barChartData.isNotEmpty,
          'You need to provide at least one data object!',
        ) {
    if (maximum == null) {
      var max = barChartData.first.value;
      for (var i = 1; i < barChartData.length; i++) {
        if (barChartData[i].value > max) {
          max = barChartData[i].value;
        }
      }
      _maximum = max;
    } else {
      _maximum = maximum;
    }
  }

  final List<BarChartData> barChartData;
  final double padding;
  late final double _maximum;

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> with TickerProviderStateMixin {
  late final Animation<double> startAnimation;
  late final Tween<double> animationRange;
  late final AnimationController startAnimationController;

  @override
  void initState() {
    super.initState();
    animationRange = Tween(begin: 0, end: 1);
    startAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    startAnimation = animationRange.animate(
      CurvedAnimation(
        curve: Curves.fastOutSlowIn,
        parent: startAnimationController,
      ),
    )..addListener(() {
        setState(() {});
      });
    startAnimationController.forward();
  }

  @override
  void dispose() {
    startAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < widget.barChartData.length; i++) ...[
            CustomBar(
              width: (constraints.maxWidth / widget.barChartData.length) -
                  widget.padding,
              percentage: startAnimation.value *
                  ((widget.barChartData[i].value / widget._maximum).isNaN
                      ? 0
                      : widget.barChartData[i].value / widget._maximum * 100),
              color: widget.barChartData[i].color,
              label: widget.barChartData[i].label,
            ),
            if (i != widget.barChartData.length - 1)
              SizedBox(width: widget.padding),
          ],
        ],
      ),
    );
  }
}
