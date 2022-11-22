import '../../../../../utils/common_imports.dart';
import '../../../charts.dart';

class BarChartPage extends StatefulWidget {
  const BarChartPage({super.key});

  @override
  State<BarChartPage> createState() => _BarChartPageState();
}

class _BarChartPageState extends State<BarChartPage> {
  static const double _pagePadding = 20;

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
