abstract class Environment<T> {
  bool isMockEnabled();

  T when({required T Function() mock, required T Function() orElse});
}

const flavor = String.fromEnvironment('FLAVOR');

class EnvironmentImpl implements Environment {
  @override
  bool isMockEnabled() => flavor == 'MOCK';

  @override
  when({required Function() mock, required Function() orElse}) {
    isMockEnabled() ? mock() : orElse();
  }
}
