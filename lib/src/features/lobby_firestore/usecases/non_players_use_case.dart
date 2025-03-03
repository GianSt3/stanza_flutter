import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/utils.dart';
import '../../lobby/bloc/lobby_cubit.dart';
import '../bloc/firestore_chat_cubit.dart';

class NonPlayersUseCase extends VoidUseCase<List<String>> {
  final FirestoreChatCubit firestoreChatCubit;
  final LobbyCubit lobbyCubit;

  NonPlayersUseCase({
    required this.firestoreChatCubit,
    required this.lobbyCubit,
  });

  @override
  List<String> call() {
    // Get the users that are currently active in the chat (5min)
    final chatUsers = firestoreChatCubit.state.chat.authors
        // .where((user) => user.secondsSinceLastActivity < 300)
        .toList();

    // Get the players that are selected to play the game
    final players = lobbyCubit.state.lobby
        .where((player) => player.nextPlayer)
        .map((player) => player.name)
        .toList();

    final nonPlayers =
        chatUsers.where((user) => !players.contains(user.name)).toList();

    logger.d('Available users: $nonPlayers');

    return nonPlayers.map((user) => user.name).toList();
  }
}
