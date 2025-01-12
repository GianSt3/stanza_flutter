import 'package:eleven_labs/eleven_labs.dart';
import 'package:get_it/get_it.dart';
import 'package:stanza_scrapper/app/app.dart';
import 'package:stanza_scrapper/data/youtube/youtube_chat_repository.dart';
import 'package:stanza_scrapper/data/youtube/youtube_mock_chat_repository.dart';
import 'package:stanza_scrapper/domain/youtube/youtube_chat_repository_interface.dart';

final _injector = GetIt.instance;

T provide<T extends Object>() => _injector<T>();

Future<void> initDependencyInjection() async {
  _injector
    ..registerSingleton<ElevenLabsInterface>(ElevenLabsAPI())
    ..registerSingleton<Environment>(EnvironmentImpl())
    ..registerSingleton<YoutubeChatRepositoryInterface>(
        _injector<Environment>().isMockEnabled()
            ? YoutubeMockChatRepository()
            : YoutubeChatRepository());
}
