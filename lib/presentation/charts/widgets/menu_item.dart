import '../../../utils/common_imports.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.iconData,
    required this.text,
    required this.color,
    required this.page,
  });

  final IconData iconData;
  final String text;
  final Color color;
  final Widget page;

  static const double _radius = 30;
  static const double _padding = 20;
  static const double _iconSize = 70;
  static const double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 2,
      borderRadius: BorderRadius.circular(_radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(_radius),
        onTap: () => _navigateToPage(context),
        child: Padding(
          padding: const EdgeInsets.all(_padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: _iconSize,
              ),
              const SizedBox(height: _padding),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: _fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context) {
    context.routeTo(page);
  }
}
