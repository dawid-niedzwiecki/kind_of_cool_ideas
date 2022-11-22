import '../../../../../utils/common_imports.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    super.key,
    required this.amount,
    required this.difference,
  });

  final double amount;
  final double difference;

  static const double _padding = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(_padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            amount.toMoneyFormat(suffix: 'PLN'),
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          const SizedBox(height: _padding),
          Text(
            _toDifferenceFormat(difference),
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xFF867A98),
            ),
          ),
        ],
      ),
    );
  }

  String _toDifferenceFormat(double number) {
    final formattedNum = number.toMoneyFormat();
    if (number >= 0) {
      return '+$formattedNum%';
    } else {
      return '$formattedNum%';
    }
  }
}
