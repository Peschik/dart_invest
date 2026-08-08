String formatSignedPercent(num percent, {int fractionDigits = 2}) {
  final body = percent.toStringAsFixed(fractionDigits);

  return '${percent > 0 ? '+' : ''}$body%';
}
