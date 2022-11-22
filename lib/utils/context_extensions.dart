import 'common_imports.dart';

extension RouterExtension on BuildContext {
  Future<T?> routeTo<T extends Object?>(Widget widget) {
    return Navigator.of(this).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }

  void pop<T extends Object?>([T? returnValue]) {
    return Navigator.of(this).pop<T>(returnValue);
  }
}
