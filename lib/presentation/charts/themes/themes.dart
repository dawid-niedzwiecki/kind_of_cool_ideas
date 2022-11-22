import '../../../utils/common_imports.dart';

ThemeData getTheme(BuildContext context) => ThemeData(
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: Colors.white,
          ),
      scaffoldBackgroundColor: const Color(0xFF25173F),
    );
