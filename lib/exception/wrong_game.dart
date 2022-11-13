class WrongGameException implements Exception {
  String correctGame;

  String message;

  WrongGameException(this.message, this.correctGame);
}
