import '../../../utils/common_imports.dart';

const double _padding = 8;

class CoolTile extends StatelessWidget {
  const CoolTile({
    super.key,
    required this.page,
    required this.subject,
    required this.description,
    required this.iconData,
    required this.color,
  });

  final Widget page;
  final String subject;
  final String description;
  final IconData iconData;
  final Color color;

  static const double _height = 50;
  static const double _borderRadius = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(_padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_borderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(_borderRadius),
          onTap: () => _navigateToPage(context),
          child: SizedBox(
            height: _height,
            child: Row(
              children: [
                _CoolTileLeading(
                  iconData: iconData,
                  color: color,
                ),
                _CoolTileCenter(
                  subject: subject,
                  description: description,
                ),
                const _CoolTileTrailing(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context) {
    context.routeTo(page);
  }
}

class _CoolTileLeading extends StatelessWidget {
  const _CoolTileLeading({
    required this.iconData,
    required this.color,
  });

  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: ColoredBox(
        color: color,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _CoolTileCenter extends StatelessWidget {
  const _CoolTileCenter({
    required this.subject,
    required this.description,
  });

  final String subject;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(_padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}

class _CoolTileTrailing extends StatelessWidget {
  const _CoolTileTrailing();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(_padding),
      child: Icon(
        Icons.chevron_right,
        color: Colors.blue,
      ),
    );
  }
}
