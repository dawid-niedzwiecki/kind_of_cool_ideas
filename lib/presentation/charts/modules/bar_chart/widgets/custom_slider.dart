import '../../../../../utils/common_imports.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
    required this.color,
    this.min = 0,
    this.max = 1,
  });

  final double value;
  final void Function(double) onChanged;
  final Color color;
  final double min;
  final double max;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        sliderTheme: SliderThemeData(
          trackHeight: 15,
          thumbColor: color,
          activeTrackColor: color.lighten(0.2),
          inactiveTrackColor: color.darken(0.2),
        ),
      ),
      child: Slider(
        value: value,
        onChanged: onChanged,
        min: min,
        max: max,
      ),
    );
  }
}
