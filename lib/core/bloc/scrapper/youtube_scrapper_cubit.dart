import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/usecases/youtube/init_youtube_chat_use_case.dart';
import 'package:stanza_scrapper/domain/usecases/youtube/messages_youtube_chat_use_case.dart';
import 'package:stanza_scrapper/main.dart';
import 'package:stanza_scrapper/utils/logger.dart';

part 'youtube_scrapper_state.dart';

part 'youtube_scrapper_cubit.freezed.dart';

class YoutubeScrapperCubit extends Cubit<YoutubeScrapperState> {
  YoutubeScrapperCubit()
      : super(const YoutubeScrapperState(
            status: YoutubeScrapperStatus.initial()));

  final InitYoutubeChatUseCase _initYoutubeChatUseCase =
      InitYoutubeChatUseCase(injector());
  final MessagesYoutubeChatUseCase _messagesYoutubeChatUseCase =
      MessagesYoutubeChatUseCase(injector());

  void start(String liveId) async {
    _initYoutubeChatUseCase.call(params: liveId);
    emit(state.copyWith(status: const YoutubeScrapperStatus.ready()));
    read();
  }

  void read() {
    state.status.maybeWhen(
        stop: () => logger.d("Reading stopped"),
        orElse: () async {
          final result = await _messagesYoutubeChatUseCase.call();
          if (result.isRight) {
            emit(state.copyWith(
                status: const YoutubeScrapperStatus.reading(),
                chat: state.chat.copyWith(result.right)));
          } else {
            emit(state.copyWith(status: const YoutubeScrapperStatus.error()));
          }

          // Loop
          Timer(const Duration(seconds: 1), read);
        });
  }

  void stop() {
    emit(state.copyWith(status: const YoutubeScrapperStatus.stop()));
  }
}
