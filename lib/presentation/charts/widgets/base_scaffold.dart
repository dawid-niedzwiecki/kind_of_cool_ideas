import '../../../utils/common_imports.dart';
import '../charts.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    super.key,
    required this.body,
    required this.title,
  });

  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: getTheme(context),
      child: SafeArea(
        child: Scaffold(
          body: body,
          appBar: ChartsAppBar(
            title: title,
          ),
        ),
      ),
    );
  }
}
