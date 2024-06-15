import 'package:stanza_scrapper/data/model/youtube_message.dart';

abstract class YoutubeChatRepositoryInterface {
  Future<void> init({required String liveId});

  Future<List<YoutubeMessage>> getMessages();
}
