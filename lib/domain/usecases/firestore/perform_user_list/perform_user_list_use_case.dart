import 'dart:math';

import '../../../../core/core.dart';
import '../../../../core/utils/utils.dart';

abstract class PerformUserListUseCase extends UseCase<String, List<String>> {
  List<String> get userList;

  @override
  String call({required List<String> params});

  String another();
}

class PerformUserListUseCaseImpl extends PerformUserListUseCase {
  @override
  List<String> userList = [];
  String lastUser = '';

  @override
  String call({required List<String> params}) {
    userList = params;
    String selectedUser;
    int attempts = 0;
    do {
      selectedUser = userList[Random().nextInt(userList.length)];
      attempts++;
    } while (selectedUser == lastUser && attempts < 10); // Limit attempts to 10
    logger.d('Selected user: $selectedUser after $attempts attempts');
    lastUser = selectedUser;
    return selectedUser;
  }

  @override
  String another() {
    return call(params: userList);
  }
}

class MockPerformUserListUseCase extends PerformUserListUseCase {
  @override
  List<String> userList = ['Giandalf42', 'JeanNazee'];
  String lastUser = '';

  @override
  String call({required List<String> params}) {
    String selectedUser;
    if (lastUser == userList.elementAt(0)) {
      selectedUser = userList.elementAt(1); // Limit attempts to 10
    } else {
      selectedUser = userList.elementAt(0);
    }
    logger.d('MOCK Selected user: $selectedUser');
    lastUser = selectedUser;
    return selectedUser;
  }

  @override
  String another() {
    return call(params: userList);
  }
}
