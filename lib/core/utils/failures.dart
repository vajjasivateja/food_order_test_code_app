abstract class Failure {}

class DatabaseFailure extends Failure {
  final String message;

  DatabaseFailure(this.message);
}
