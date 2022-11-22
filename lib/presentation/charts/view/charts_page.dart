import '../../../utils/common_imports.dart';
import '../charts.dart';

class ChartsPage extends StatelessWidget {
  const ChartsPage({super.key});

  static const double _padding = 20;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Charts',
      body: GridView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(_padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: _padding,
          mainAxisSpacing: _padding,
        ),
        children: const [
          MenuButton(
            color: Color(0xFFA283C0),
            text: 'Bar Chart',
            iconData: Icons.bar_chart,
            page: BarChartPage(),
          ),
          MenuButton(
            color: Color(0xFF636CAD),
            text: 'Pie Chart',
            iconData: Icons.pie_chart,
            page: PieChartPage(),
          ),
          MenuButton(
            color: Color(0xFF9BB7CC),
            text: 'Wave Chart',
            iconData: Icons.waves,
            page: WaveChartPage(),
          ),
          MenuButton(
            color: Color(0xFFC7B4D8),
            text: 'Radar Chart',
            iconData: Icons.radar,
            page: RadarChartPage(),
          ),
          MenuButton(
            color: Color(0xFFDCAC7A),
            text: 'Area Chart',
            iconData: Icons.area_chart,
            page: RadarChartPage(),
          ),
          MenuButton(
            color: Color(0xFFD67275),
            text: 'Analytics Dashboard',
            iconData: Icons.dashboard,
            page: RadarChartPage(),
          ),
        ],
      ),
    );
  }
}
