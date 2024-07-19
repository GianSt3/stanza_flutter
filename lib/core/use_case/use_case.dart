abstract class UseCase<CaseResponse, Params> {
  CaseResponse call({required Params params});
}

abstract class VoidUseCase<CaseResponse, Void> {
  CaseResponse call();
}

abstract class FutureUseCase<CaseResponse, Params> {
  Future<CaseResponse> call({required Params params});
}

abstract class VoidFutureUseCase<CaseResponse, Void> {
  Future<CaseResponse> call();
}
