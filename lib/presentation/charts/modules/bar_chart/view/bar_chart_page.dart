import '../../../../../utils/common_imports.dart';
import '../../../charts.dart';

class BarChartPage extends StatefulWidget {
  const BarChartPage({super.key});

  @override
  State<BarChartPage> createState() => _BarChartPageState();
}

class _BarChartPageState extends State<BarChartPage> {
  static const double _pagePadding = 20;
  static final List<BarChartData> barChartData = [
    BarChartData(
      color: const Color(0xFFA283C0),
      value: 1000,
      label: ChartsAssets.orchidLogo,
    ),
    BarChartData(
      color: const Color(0xFFD8C5E8),
      value: 200,
      label: ChartsAssets.kucoinLogo,
    ),
    BarChartData(
      color: const Color(0xFFD3A066),
      value: 700,
      label: ChartsAssets.bitcoinLogo,
    ),
    BarChartData(
      color: const Color(0xFFBC6361),
      value: 450,
      label: ChartsAssets.avalancheLogo,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Bar Chart',
      body: ListView(
        padding: const EdgeInsets.all(_pagePadding),
        physics: const BouncingScrollPhysics(),
        children: [
          const HeaderInfo(
            amount: 1459.35,
            difference: 35.4,
          ),
          const SizedBox(height: _pagePadding),
          SizedBox(
            height: 500,
            child: BarChart(
              padding: 45,
              barChartData: barChartData,
            ),
          ),
          for (var i = 0; i < barChartData.length; i++)
            CustomSlider(
              value: barChartData[i].value,
              onChanged: (v) {
                setState(() {
                  barChartData[i] = barChartData[i].copyWith(value: v);
                });
              },
              color: barChartData[i].color,
              max: 1000,
            ),
        ],
      ),
    );
  }
}

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
