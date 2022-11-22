extension DoubleExtension on num {
  String toMoneyFormat({String? suffix}) {
    final str = toStringAsFixed(2);
    final parts = str.split('.');
    final formattedPreDec = parts[0].replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    );
    final clean = '$formattedPreDec,${parts[1]}';
    if (suffix == null || suffix.isEmpty) return clean;
    return '$clean $suffix';
  }
}
