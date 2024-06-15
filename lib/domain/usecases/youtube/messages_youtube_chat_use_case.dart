import 'package:either_dart/either.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/youtube/youtube_chat_repository_interface.dart';

class MessagesYoutubeChatUseCase
    extends FutureUseCase<Either<Exception, List<YoutubeMessage>>, void> {
  final YoutubeChatRepositoryInterface _youtubeChatRepositoryInterface;

  MessagesYoutubeChatUseCase(this._youtubeChatRepositoryInterface);

  @override
  Future<Either<Exception, List<YoutubeMessage>>> call(
      {void params}) async {
    try {
      final result = await _youtubeChatRepositoryInterface.getMessages();
      return Right(result);
    } catch (err) {
      return Left(Exception(err));
    }
  }
}
