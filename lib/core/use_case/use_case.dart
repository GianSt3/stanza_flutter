abstract class UseCase<CaseResponse, Params> {
  CaseResponse call({required Params params});
}

abstract class FutureUseCase<CaseResponse, Params> {
  Future<CaseResponse> call({required Params params});
}
