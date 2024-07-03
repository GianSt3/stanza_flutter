abstract class Environment<T> {
  bool isDebug();

  T when({required T Function() debug, required T Function() orElse});
}

const env = String.fromEnvironment('ENV');

class EnvironmentImpl implements Environment {
  @override
  bool isDebug() => env == 'DEBUG';

  @override
  when({required Function() debug, required Function() orElse}) {
    isDebug() ? debug() : orElse();
  }
}
