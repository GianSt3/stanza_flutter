// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elevenlabs_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextToSpeechRequest _$TextToSpeechRequestFromJson(Map<String, dynamic> json) =>
    TextToSpeechRequest(
      voiceId: json['voice_id'] as String,
      modelId: json['model_id'] as String? ?? "eleven_monolingual_v1",
      text: json['text'] as String,
      voiceSettings: json['voice_settings'] == null
          ? null
          : VoiceSettings.fromJson(
              json['voice_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextToSpeechRequestToJson(
        TextToSpeechRequest instance) =>
    <String, dynamic>{
      'voice_id': instance.voiceId,
      'model_id': instance.modelId,
      'text': instance.text,
      'voice_settings': instance.voiceSettings,
    };

VoiceSettings _$VoiceSettingsFromJson(Map<String, dynamic> json) =>
    VoiceSettings(
      similarityBoost: (json['similarity_boost'] as num).toDouble(),
      stability: (json['stability'] as num).toDouble(),
      style: (json['style'] as num).toDouble(),
    );

Map<String, dynamic> _$VoiceSettingsToJson(VoiceSettings instance) =>
    <String, dynamic>{
      'similarity_boost': instance.similarityBoost,
      'stability': instance.stability,
      'style': instance.style,
    };

TextToSpeechStreamRequest _$TextToSpeechStreamRequestFromJson(
        Map<String, dynamic> json) =>
    TextToSpeechStreamRequest(
      modelId: json['model_id'] as String?,
      text: json['text'] as String,
      voiceSettings: json['voice_settings'] == null
          ? null
          : VoiceSettings.fromJson(
              json['voice_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextToSpeechStreamRequestToJson(
        TextToSpeechStreamRequest instance) =>
    <String, dynamic>{
      'model_id': instance.modelId,
      'text': instance.text,
      'voice_settings': instance.voiceSettings,
    };

ElevenModel _$ElevenModelFromJson(Map<String, dynamic> json) => ElevenModel(
      canBeFinetuned: json['can_be_finetuned'] as bool,
      canDoTextToSpeech: json['can_do_text_to_speech'] as bool,
      canDoVoiceConversion: json['can_do_voice_conversion'] as bool,
      description: json['description'] as String,
      languages: (json['languages'] as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      modelId: json['model_id'] as String,
      name: json['name'] as String,
      tokenCostFactor: json['token_cost_factor'] as num,
    );

Map<String, dynamic> _$ElevenModelToJson(ElevenModel instance) =>
    <String, dynamic>{
      'can_be_finetuned': instance.canBeFinetuned,
      'can_do_text_to_speech': instance.canDoTextToSpeech,
      'can_do_voice_conversion': instance.canDoVoiceConversion,
      'description': instance.description,
      'languages': instance.languages,
      'model_id': instance.modelId,
      'name': instance.name,
      'token_cost_factor': instance.tokenCostFactor,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      languageId: json['language_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'language_id': instance.languageId,
      'name': instance.name,
    };

VerificationAttempt _$VerificationAttemptFromJson(Map<String, dynamic> json) =>
    VerificationAttempt(
      dateUnix: (json['date_unix'] as num).toInt(),
      levenshteinDistance: json['levenshtein_distance'] as num,
      recording: Recording.fromJson(json['recording'] as Map<String, dynamic>),
      similarity: json['similarity'] as num,
      text: json['text'] as String,
    );

Map<String, dynamic> _$VerificationAttemptToJson(
        VerificationAttempt instance) =>
    <String, dynamic>{
      'date_unix': instance.dateUnix,
      'levenshtein_distance': instance.levenshteinDistance,
      'recording': instance.recording,
      'similarity': instance.similarity,
      'text': instance.text,
    };

Sample _$SampleFromJson(Map<String, dynamic> json) => Sample(
      fileName: json['file_name'] as String,
      hash: json['hash'] as String,
      mimeType: json['mime_type'] as String,
      sampleId: json['sample_id'] as String,
      sizeBytes: (json['size_bytes'] as num).toInt(),
    );

Map<String, dynamic> _$SampleToJson(Sample instance) => <String, dynamic>{
      'file_name': instance.fileName,
      'hash': instance.hash,
      'mime_type': instance.mimeType,
      'sample_id': instance.sampleId,
      'size_bytes': instance.sizeBytes,
    };

AddVoiceRequest _$AddVoiceRequestFromJson(Map<String, dynamic> json) =>
    AddVoiceRequest(
      description: json['description'] as String?,
      files: (json['files'] as List<dynamic>).map((e) => e as String).toList(),
      labels: json['labels'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AddVoiceRequestToJson(AddVoiceRequest instance) =>
    <String, dynamic>{
      'description': instance.description,
      'files': instance.files,
      'labels': instance.labels,
      'name': instance.name,
    };

AddVoiceResponse _$AddVoiceResponseFromJson(Map<String, dynamic> json) =>
    AddVoiceResponse(
      voiceId: json['voice_id'] as String,
    );

Map<String, dynamic> _$AddVoiceResponseToJson(AddVoiceResponse instance) =>
    <String, dynamic>{
      'voice_id': instance.voiceId,
    };

EditVoiceRequest _$EditVoiceRequestFromJson(Map<String, dynamic> json) =>
    EditVoiceRequest(
      description: json['description'] as String?,
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
      labels: json['labels'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$EditVoiceRequestToJson(EditVoiceRequest instance) =>
    <String, dynamic>{
      'description': instance.description,
      'files': instance.files,
      'labels': instance.labels,
      'name': instance.name,
    };

History _$HistoryFromJson(Map<String, dynamic> json) => History(
      hasMore: json['has_more'] as bool,
      history: (json['history'] as List<dynamic>)
          .map((e) => HistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastHistoryItemId: json['last_history_item_id'] as String,
    );

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
      'has_more': instance.hasMore,
      'history': instance.history,
      'last_history_item_id': instance.lastHistoryItemId,
    };

HistoryItem _$HistoryItemFromJson(Map<String, dynamic> json) => HistoryItem(
      characterCountChangeFrom:
          (json['character_count_change_from'] as num).toInt(),
      characterCountChangeTo:
          (json['character_count_change_to'] as num).toInt(),
      contentType: json['contentType'] as String,
      dateUnix: (json['date_unix'] as num).toInt(),
      feedback: Feedback.fromJson(json['feedback'] as Map<String, dynamic>),
      historyItemId: json['history_item_id'] as String,
      requestId: json['request_id'] as String,
      settings:
          VoiceSettings.fromJson(json['settings'] as Map<String, dynamic>),
      state: $enumDecode(_$StateEnumEnumMap, json['state']),
      text: json['text'] as String,
      voiceId: json['voice_id'] as String,
      voiceName: json['voice_name'] as String,
    );

Map<String, dynamic> _$HistoryItemToJson(HistoryItem instance) =>
    <String, dynamic>{
      'character_count_change_from': instance.characterCountChangeFrom,
      'character_count_change_to': instance.characterCountChangeTo,
      'contentType': instance.contentType,
      'date_unix': instance.dateUnix,
      'feedback': instance.feedback,
      'history_item_id': instance.historyItemId,
      'request_id': instance.requestId,
      'settings': instance.settings,
      'state': _$StateEnumEnumMap[instance.state]!,
      'text': instance.text,
      'voice_id': instance.voiceId,
      'voice_name': instance.voiceName,
    };

const _$StateEnumEnumMap = {
  StateEnum.created: 'created',
  StateEnum.deleted: 'deleted',
  StateEnum.processing: 'processing',
};

Feedback _$FeedbackFromJson(Map<String, dynamic> json) => Feedback(
      audioQuality: json['audio_quality'] as bool,
      emotions: json['emotions'] as bool,
      feedback: json['feedback'] as String,
      glitches: json['glitches'] as bool,
      inaccurateClone: json['inaccurate_clone'] as bool,
      other: json['other'] as bool,
      reviewStatus: json['review_status'] as String,
      thumbsUp: json['thumbs_up'] as bool,
    );

Map<String, dynamic> _$FeedbackToJson(Feedback instance) => <String, dynamic>{
      'audio_quality': instance.audioQuality,
      'emotions': instance.emotions,
      'feedback': instance.feedback,
      'glitches': instance.glitches,
      'inaccurate_clone': instance.inaccurateClone,
      'other': instance.other,
      'review_status': instance.reviewStatus,
      'thumbs_up': instance.thumbsUp,
    };

DownloadHistoryItemsRequest _$DownloadHistoryItemsRequestFromJson(
        Map<String, dynamic> json) =>
    DownloadHistoryItemsRequest(
      historyItemIds: (json['history_item_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DownloadHistoryItemsRequestToJson(
        DownloadHistoryItemsRequest instance) =>
    <String, dynamic>{
      'history_item_ids': instance.historyItemIds,
    };

ElevenUser _$ElevenUserFromJson(Map<String, dynamic> json) => ElevenUser(
      canUseDelayedPaymentMethods:
          json['can_use_delayed_payment_methods'] as bool,
      isNewUser: json['is_new_user'] as bool,
      subscription: SubscriptionInfo.fromJson(
          json['subscription'] as Map<String, dynamic>),
      xiApiKey: json['xi_api_key'] as String,
    );

Map<String, dynamic> _$ElevenUserToJson(ElevenUser instance) =>
    <String, dynamic>{
      'can_use_delayed_payment_methods': instance.canUseDelayedPaymentMethods,
      'is_new_user': instance.isNewUser,
      'subscription': instance.subscription,
      'xi_api_key': instance.xiApiKey,
    };

SubscriptionInfo _$SubscriptionInfoFromJson(Map<String, dynamic> json) =>
    SubscriptionInfo(
      allowedToExtendCharacterLimit:
          json['allowed_to_extend_character_limit'] as bool,
      canExtendCharacterLimit: json['can_extend_character_limit'] as bool,
      canExtendVoiceLimit: json['can_extend_voice_limit'] as bool,
      canUseInstantVoiceCloning: json['can_use_instant_voice_cloning'] as bool,
      canUseProfessionalVoiceCloning:
          json['can_use_professional_voice_cloning'] as bool,
      characterCount: (json['character_count'] as num).toInt(),
      characterLimit: (json['character_limit'] as num).toInt(),
      currency: json['currency'] != null ? json['currency'] as String : "",
      nextCharacterCountResetUnix:
          (json['next_character_count_reset_unix'] as num).toInt(),
      professionalVoiceLimit: (json['professional_voice_limit'] as num).toInt(),
      status: json['status'] != null ? json['status'] as String : "",
      tier: json['tier'] != null ? json['tier'] as String : "",
      voiceLimit: (json['voice_limit'] as num).toInt(),
    );

Map<String, dynamic> _$SubscriptionInfoToJson(SubscriptionInfo instance) =>
    <String, dynamic>{
      'allowed_to_extend_character_limit':
          instance.allowedToExtendCharacterLimit,
      'can_extend_character_limit': instance.canExtendCharacterLimit,
      'can_extend_voice_limit': instance.canExtendVoiceLimit,
      'can_use_instant_voice_cloning': instance.canUseInstantVoiceCloning,
      'can_use_professional_voice_cloning':
          instance.canUseProfessionalVoiceCloning,
      'character_count': instance.characterCount,
      'character_limit': instance.characterLimit,
      'currency': instance.currency,
      'next_character_count_reset_unix': instance.nextCharacterCountResetUnix,
      'professional_voice_limit': instance.professionalVoiceLimit,
      'status': instance.status,
      'tier': instance.tier,
      'voice_limit': instance.voiceLimit,
    };

ExtendedSubscriptionInfo _$ExtendedSubscriptionInfoFromJson(
        Map<String, dynamic> json) =>
    ExtendedSubscriptionInfo(
      allowedToExtendCharacterLimit:
          json['allowed_to_extend_character_limit'] as bool,
      canExtendCharacterLimit: json['can_extend_character_limit'] as bool,
      canExtendVoiceLimit: json['can_extend_voice_limit'] as bool,
      canUseInstantVoiceCloning: json['can_use_instant_voice_cloning'] as bool,
      canUseProfessionalVoiceCloning:
          json['can_use_professional_voice_cloning'] as bool,
      characterCount: (json['character_count'] as num).toInt(),
      characterLimit: (json['character_limit'] as num).toInt(),
      currency: json['currency'] as String,
      hasOpenInvoices: json['has_open_invoices'] as bool,
      nextInvoice:
          NextInvoice.fromJson(json['next_invoice'] as Map<String, dynamic>),
      professionalVoiceLimit: (json['professional_voice_limit'] as num).toInt(),
      status: json['status'] as String,
      tier: json['tier'] as String,
      voiceLimit: (json['voice_limit'] as num).toInt(),
    );

Map<String, dynamic> _$ExtendedSubscriptionInfoToJson(
        ExtendedSubscriptionInfo instance) =>
    <String, dynamic>{
      'allowed_to_extend_character_limit':
          instance.allowedToExtendCharacterLimit,
      'can_extend_character_limit': instance.canExtendCharacterLimit,
      'can_extend_voice_limit': instance.canExtendVoiceLimit,
      'can_use_instant_voice_cloning': instance.canUseInstantVoiceCloning,
      'can_use_professional_voice_cloning':
          instance.canUseProfessionalVoiceCloning,
      'character_count': instance.characterCount,
      'character_limit': instance.characterLimit,
      'currency': instance.currency,
      'has_open_invoices': instance.hasOpenInvoices,
      'next_invoice': instance.nextInvoice,
      'professional_voice_limit': instance.professionalVoiceLimit,
      'status': instance.status,
      'tier': instance.tier,
      'voice_limit': instance.voiceLimit,
    };

NextInvoice _$NextInvoiceFromJson(Map<String, dynamic> json) => NextInvoice(
      amountDueCents: (json['amount_due_cents'] as num).toInt(),
      nextPaymentAttemptUnix:
          (json['next_payment_attempt_unix'] as num).toInt(),
    );

Map<String, dynamic> _$NextInvoiceToJson(NextInvoice instance) =>
    <String, dynamic>{
      'amount_due_cents': instance.amountDueCents,
      'next_payment_attempt_unix': instance.nextPaymentAttemptUnix,
    };
