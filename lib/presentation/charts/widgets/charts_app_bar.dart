import '../../../utils/common_imports.dart';

class ChartsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChartsAppBar({
    super.key,
    required this.title,
  });

  final String title;

  static const double _height = kToolbarHeight;
  static const double _preSuffSize = 50;
  static const double _padding = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(_padding),
      child: Row(
        children: [
          SizedBox(
            height: _preSuffSize,
            width: _preSuffSize,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const CircleAvatar(
            backgroundColor: Colors.red,
            radius: _preSuffSize / 2,
            child: Text('DN'),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}
