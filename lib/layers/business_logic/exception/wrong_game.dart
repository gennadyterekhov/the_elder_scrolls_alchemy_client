class WrongGameException implements Exception {
  String wrongGame;
  String subject;

  String correctGame;

  String message;

  WrongGameException(
      {this.message = 'wrong game', required this.correctGame, required this.wrongGame, required this.subject});

  @override
  String toString() {
    return "WrongGameException: $message ; subject: $subject ; wrongGame: $wrongGame ; correctGame: $correctGame ";
  }
}
