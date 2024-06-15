import 'package:stanza_scrapper/core/use_case/use_case.dart';
import 'package:stanza_scrapper/domain/youtube/youtube_chat_repository_interface.dart';

class InitYoutubeChatUseCase extends UseCase<void, String> {
  final YoutubeChatRepositoryInterface _youtubeRepository;

  InitYoutubeChatUseCase(this._youtubeRepository);

  @override
  void call({required String params}) {
    _youtubeRepository.init(liveId: params);
  }
}
