String replaceUnderscoreWithSpace(String? input) {
  return input?.replaceAll('_', ' ') ?? '';
}

String extractNumber(String input) {
  return input.replaceAll(RegExp(r'[()\s]'), '');
}

int extractNumberAsInt(String input) {
  return int.parse(input.replaceAll(RegExp(r'[()\s]'), ''));
}

String convertToInlineMath(String input) {
  final buffer = StringBuffer();
  final tokens = input.split(' ');

  bool inMath = false;

  bool isMathToken(String token) {
    return token.contains(r'\') ||
        RegExp(r'[=+\-*/^]').hasMatch(token) ||
        RegExp(r'\d').hasMatch(token);
  }

  for (int i = 0; i < tokens.length; i++) {
    final token = tokens[i];

    if (isMathToken(token)) {
      if (!inMath) {
        buffer.write(r'$');
        inMath = true;
      }
      buffer.write('$token ');
    } else {
      if (inMath) {
        buffer.write(r'$ ');
        inMath = false;
      }
      buffer.write('$token ');
    }
  }

  if (inMath) {
    buffer.write(r'$');
  }

  return buffer.toString().trim();
}
