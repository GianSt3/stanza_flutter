import 'package:package_info_plus/package_info_plus.dart';

abstract class Environment<T> {
  bool isMockEnabled();

  String get appVersion;

  T when({required T Function() mock, required T Function() orElse});
}

const flavor = String.fromEnvironment('FLAVOR');

class EnvironmentImpl implements Environment {
  late final PackageInfo packageInfo;

  EnvironmentImpl() {
    _init();
  }

  void _init() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  @override
  bool isMockEnabled() => flavor == 'MOCK';

  @override
  when({required Function() mock, required Function() orElse}) {
    isMockEnabled() ? mock() : orElse();
  }

  @override
  String get appVersion => packageInfo.version;
}
