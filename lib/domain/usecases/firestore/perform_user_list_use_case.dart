import 'dart:math';

import '../../../core/core.dart';
import '../../../core/utils/utils.dart';

class PerformUserListUseCase extends UseCase<String, List<String>> {
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

  String another() {
    return call(params: userList);
  }
}
