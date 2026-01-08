String replaceUnderscoreWithSpace(String? input) {
  return input?.replaceAll('_', ' ') ?? '';
}

String extractNumber(String input) {
  return input.replaceAll(RegExp(r'[()\s]'), '');
}

int extractNumberAsInt(String input) {
  return int.parse(input.replaceAll(RegExp(r'[()\s]'), ''));
}
