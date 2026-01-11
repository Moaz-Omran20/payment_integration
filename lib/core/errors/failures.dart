abstract class Failures {
  String errorMessage;

  Failures({required this.errorMessage});
}


class ServerFailures extends Failures
{
  ServerFailures({required super.errorMessage});

}
