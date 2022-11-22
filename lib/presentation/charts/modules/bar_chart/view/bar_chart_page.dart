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
