class NotFoundException implements Exception {
  String message;
  String subject;

  String probableCorrectGame;

  NotFoundException({
    this.message = 'object not found',
    required this.subject,
    this.probableCorrectGame = 'unknown',
  });

  @override
  String toString() {
    return "NotFoundException: $message ; subject: $subject ; probableCorrectGame: $probableCorrectGame ";
  }
}
