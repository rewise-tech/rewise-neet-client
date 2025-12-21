String trimErrorMsg(Exception e) {
  String message = e.toString();
  if (message.startsWith('Exception: ')) {
    message = message.substring(11); // Remove "Exception: "
  }
  return message;
}
