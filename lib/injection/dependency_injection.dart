import 'package:eleven_labs/eleven_labs.dart';
import 'package:get_it/get_it.dart';

import '../app/app.dart';
import '../data/youtube/youtube_chat_repository.dart';
import '../data/youtube/youtube_mock_chat_repository.dart';
import '../domain/usecases/firestore/perform_user_list/perform_user_list_use_case.dart';
import '../domain/youtube/youtube_chat_repository_interface.dart';

final _injector = GetIt.instance;

T resolve<T extends Object>() => _injector.get<T>();

Future<void> initDependencyInjection() async {
  _injector
    ..registerSingleton<ElevenLabsInterface>(ElevenLabsAPI())
    ..registerSingleton<Environment>(EnvironmentImpl())
    ..registerSingleton<YoutubeChatRepositoryInterface>(
      _injector<Environment>().isMockEnabled()
          ? YoutubeMockChatRepository()
          : YoutubeChatRepository(),
    )
    ..registerSingleton<PerformUserListUseCase>(
        _injector<Environment>().isMockEnabled()
            ? MockPerformUserListUseCase()
            : PerformUserListUseCaseImpl());
}
