import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'elevenlabs_types.g.dart';

enum StateEnum<String> {
  created,
  deleted,
  processing,
}

/// Text to Speech Request JSON Object
///
/// Used to make API call to convert text to speech
/// Requires text parameter
/// Can optionally pass modelId and voiceSettings
/// See ElevenLabs docs for more info
@JsonSerializable()
class TextToSpeechRequest {
  @JsonKey(name: 'voice_id')
  final String voiceId;
  @JsonKey(name: 'model_id')
  final String modelId;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'voice_settings')
  final VoiceSettings? voiceSettings;

  TextToSpeechRequest({
    required this.voiceId,
    this.modelId = "eleven_monolingual_v1",
    required this.text,
    this.voiceSettings,
  });

  factory TextToSpeechRequest.fromJson(Map<String, dynamic> json) =>
      _$TextToSpeechRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TextToSpeechRequestToJson(this);
}

/// Voice Settings JSON Object
///
/// Requires similarity_boost and stability
/// Both values are 0-1.0, recommended settings are .5 and .75
/// Check ElevenLabs Docs for more info
@JsonSerializable()
class VoiceSettings {
  @JsonKey(name: 'similarity_boost')
  final double similarityBoost;

  @JsonKey(name: 'stability')
  final double stability;

  @JsonKey(name: 'style')
  final double style;

  const VoiceSettings({
    required this.similarityBoost,
    required this.stability,
    required this.style,
  });

  factory VoiceSettings.fromJson(Map<String, dynamic> json) =>
      _$VoiceSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$VoiceSettingsToJson(this);

  @override
  String toString() {
    return "style: $style stability: $stability similarity: $similarityBoost";
  }
}

/// Text to Speech Stream Request JSON Object
///
/// Used to make API call to stream text to speech audio
/// Requires text parameter
/// Can optionally pass modelId and voiceSettings
/// See ElevenLabs docs for more info
@JsonSerializable()
class TextToSpeechStreamRequest {
  @JsonKey(name: 'model_id')
  final String? modelId;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'voice_settings')
  final VoiceSettings? voiceSettings;

  TextToSpeechStreamRequest({
    this.modelId,
    required this.text,
    this.voiceSettings,
  });

  factory TextToSpeechStreamRequest.fromJson(Map<String, dynamic> json) =>
      _$TextToSpeechStreamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TextToSpeechStreamRequestToJson(this);
}

/// Model JSON Object
///
/// Used in /v1/models API response
/// Contains model metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class ElevenModel {
  @JsonKey(name: 'can_be_finetuned')
  final bool canBeFinetuned;
  @JsonKey(name: 'can_do_text_to_speech')
  final bool canDoTextToSpeech;
  @JsonKey(name: 'can_do_voice_conversion')
  final bool canDoVoiceConversion;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'languages')
  final List<Language> languages;
  @JsonKey(name: 'model_id')
  final String modelId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'token_cost_factor')
  final num tokenCostFactor;

  ElevenModel({
    required this.canBeFinetuned,
    required this.canDoTextToSpeech,
    required this.canDoVoiceConversion,
    required this.description,
    required this.languages,
    required this.modelId,
    required this.name,
    required this.tokenCostFactor,
  });

  factory ElevenModel.fromJson(Map<String, dynamic> json) =>
      _$ElevenModelFromJson(json);

  Map<String, dynamic> toJson() => _$ElevenModelToJson(this);
}

/// Language JSON Object
///
/// Nested within Model response
/// Contains language metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class Language {
  @JsonKey(name: 'language_id')
  final String languageId;
  final String name;

  Language({
    required this.languageId,
    required this.name,
  });

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

class Samples {
  String? sampleId;
  String? fileName;
  String? mimeType;
  int? sizeBytes;
  String? hash;

  Samples(
      {this.sampleId, this.fileName, this.mimeType, this.sizeBytes, this.hash});

  Samples.fromJson(Map<String, dynamic> json) {
    sampleId = json['sample_id'];
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    sizeBytes = json['size_bytes'];
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sample_id'] = this.sampleId;
    data['file_name'] = this.fileName;
    data['mime_type'] = this.mimeType;
    data['size_bytes'] = this.sizeBytes;
    data['hash'] = this.hash;
    return data;
  }
}

class FineTuning {
  bool? isAllowedToFineTune;
  String? finetuningState;
  List<String>? verificationFailures;
  int? verificationAttemptsCount;
  bool? manualVerificationRequested;
  String? language;
  FinetuningProgress? finetuningProgress;
  String? message;
  int? datasetDurationSeconds;
  List<VerificationAttempts>? verificationAttempts;
  List<String>? sliceIds;
  ManualVerification? manualVerification;

  FineTuning(
      {this.isAllowedToFineTune,
      this.finetuningState,
      this.verificationFailures,
      this.verificationAttemptsCount,
      this.manualVerificationRequested,
      this.language,
      this.finetuningProgress,
      this.message,
      this.datasetDurationSeconds,
      this.verificationAttempts,
      this.sliceIds,
      this.manualVerification});

  FineTuning.fromJson(Map<String, dynamic> json) {
    isAllowedToFineTune = json['is_allowed_to_fine_tune'];
    finetuningState = json['finetuning_state'];
    verificationFailures = json['verification_failures'].cast<String>();
    verificationAttemptsCount = json['verification_attempts_count'];
    manualVerificationRequested = json['manual_verification_requested'];
    language = json['language'];
    finetuningProgress = json['finetuning_progress'] != null
        ? new FinetuningProgress.fromJson(json['finetuning_progress'])
        : null;
    // message = json['message'];
    datasetDurationSeconds = json['dataset_duration_seconds'];
    if (json['verification_attempts'] != null) {
      verificationAttempts = <VerificationAttempts>[];
      json['verification_attempts'].forEach((v) {
        verificationAttempts!.add(new VerificationAttempts.fromJson(v));
      });
    }
    sliceIds =
        json['slice_ids'] != null ? json['slice_ids'].cast<String>() : null;
    manualVerification = json['manual_verification'] != null
        ? new ManualVerification.fromJson(json['manual_verification'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_allowed_to_fine_tune'] = this.isAllowedToFineTune;
    data['finetuning_state'] = this.finetuningState;
    data['verification_failures'] = this.verificationFailures;
    data['verification_attempts_count'] = this.verificationAttemptsCount;
    data['manual_verification_requested'] = this.manualVerificationRequested;
    data['language'] = this.language;
    if (this.finetuningProgress != null) {
      data['finetuning_progress'] = this.finetuningProgress!.toJson();
    }
    data['message'] = this.message;
    data['dataset_duration_seconds'] = this.datasetDurationSeconds;
    if (this.verificationAttempts != null) {
      data['verification_attempts'] =
          this.verificationAttempts!.map((v) => v.toJson()).toList();
    }
    data['slice_ids'] = this.sliceIds;
    if (this.manualVerification != null) {
      data['manual_verification'] = this.manualVerification!.toJson();
    }
    return data;
  }
}

class FinetuningProgress {
  FinetuningProgress();

  FinetuningProgress.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class VerificationAttempts {
  String? text;
  int? dateUnix;
  bool? accepted;
  int? similarity;
  int? levenshteinDistance;
  Recording? recording;

  VerificationAttempts(
      {this.text,
      this.dateUnix,
      this.accepted,
      this.similarity,
      this.levenshteinDistance,
      this.recording});

  VerificationAttempts.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    dateUnix = json['date_unix'];
    accepted = json['accepted'];
    similarity = json['similarity'];
    levenshteinDistance = json['levenshtein_distance'];
    recording = json['recording'] != null
        ? new Recording.fromJson(json['recording'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['date_unix'] = this.dateUnix;
    data['accepted'] = this.accepted;
    data['similarity'] = this.similarity;
    data['levenshtein_distance'] = this.levenshteinDistance;
    if (this.recording != null) {
      data['recording'] = this.recording!.toJson();
    }
    return data;
  }
}

class Recording {
  String? recordingId;
  String? mimeType;
  int? sizeBytes;
  int? uploadDateUnix;
  String? transcription;

  Recording(
      {this.recordingId,
      this.mimeType,
      this.sizeBytes,
      this.uploadDateUnix,
      this.transcription});

  Recording.fromJson(Map<String, dynamic> json) {
    recordingId = json['recording_id'];
    mimeType = json['mime_type'];
    sizeBytes = json['size_bytes'];
    uploadDateUnix = json['upload_date_unix'];
    transcription = json['transcription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['recording_id'] = this.recordingId;
    data['mime_type'] = this.mimeType;
    data['size_bytes'] = this.sizeBytes;
    data['upload_date_unix'] = this.uploadDateUnix;
    data['transcription'] = this.transcription;
    return data;
  }
}

class ManualVerification {
  String? extraText;
  int? requestTimeUnix;
  List<Files>? files;

  ManualVerification({this.extraText, this.requestTimeUnix, this.files});

  ManualVerification.fromJson(Map<String, dynamic> json) {
    extraText = json['extra_text'];
    requestTimeUnix = json['request_time_unix'];
    if (json['files'] != null) {
      files = <Files>[];
      json['files'].forEach((v) {
        files!.add(new Files.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['extra_text'] = this.extraText;
    data['request_time_unix'] = this.requestTimeUnix;
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Files {
  String? fileId;
  String? fileName;
  String? mimeType;
  int? sizeBytes;
  int? uploadDateUnix;

  Files(
      {this.fileId,
      this.fileName,
      this.mimeType,
      this.sizeBytes,
      this.uploadDateUnix});

  Files.fromJson(Map<String, dynamic> json) {
    fileId = json['file_id'];
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    sizeBytes = json['size_bytes'];
    uploadDateUnix = json['upload_date_unix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file_id'] = this.fileId;
    data['file_name'] = this.fileName;
    data['mime_type'] = this.mimeType;
    data['size_bytes'] = this.sizeBytes;
    data['upload_date_unix'] = this.uploadDateUnix;
    return data;
  }
}

class Settings {
  int? stability;
  int? similarityBoost;
  int? style;
  bool? useSpeakerBoost;

  Settings(
      {this.stability, this.similarityBoost, this.style, this.useSpeakerBoost});

  Settings.fromJson(Map<String, dynamic> json) {
    stability = json['stability'];
    similarityBoost = json['similarity_boost'];
    style = json['style'];
    useSpeakerBoost = json['use_speaker_boost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stability'] = this.stability;
    data['similarity_boost'] = this.similarityBoost;
    data['style'] = this.style;
    data['use_speaker_boost'] = this.useSpeakerBoost;
    return data;
  }
}

class Sharing {
  String? status;
  String? historyItemSampleId;
  int? dateUnix;
  List<String>? whitelistedEmails;
  String? publicOwnerId;
  String? originalVoiceId;
  bool? financialRewardsEnabled;
  bool? freeUsersAllowed;
  bool? liveModerationEnabled;
  double? rate;
  int? noticePeriod;
  int? disableAtUnix;
  bool? voiceMixingAllowed;
  bool? featured;
  String? category;
  bool? readerAppEnabled;
  String? banReason;
  int? likedByCount;
  int? clonedByCount;
  String? name;
  String? description;
  FinetuningProgress? labels;
  String? reviewStatus;
  String? reviewMessage;
  bool? enabledInLibrary;
  String? instagramUsername;
  String? twitterUsername;
  String? youtubeUsername;
  String? tiktokUsername;

  Sharing(
      {this.status,
      this.historyItemSampleId,
      this.dateUnix,
      this.whitelistedEmails,
      this.publicOwnerId,
      this.originalVoiceId,
      this.financialRewardsEnabled,
      this.freeUsersAllowed,
      this.liveModerationEnabled,
      this.rate,
      this.noticePeriod,
      this.disableAtUnix,
      this.voiceMixingAllowed,
      this.featured,
      this.category,
      this.readerAppEnabled,
      this.banReason,
      this.likedByCount,
      this.clonedByCount,
      this.name,
      this.description,
      this.labels,
      this.reviewStatus,
      this.reviewMessage,
      this.enabledInLibrary,
      this.instagramUsername,
      this.twitterUsername,
      this.youtubeUsername,
      this.tiktokUsername});

  Sharing.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    historyItemSampleId = json['history_item_sample_id'];
    dateUnix = json['date_unix'];
    whitelistedEmails = json['whitelisted_emails'].cast<String>();
    publicOwnerId = json['public_owner_id'];
    originalVoiceId = json['original_voice_id'];
    financialRewardsEnabled = json['financial_rewards_enabled'];
    freeUsersAllowed = json['free_users_allowed'];
    liveModerationEnabled = json['live_moderation_enabled'];
    rate = json['rate'];
    noticePeriod = json['notice_period'];
    disableAtUnix = json['disable_at_unix'];
    voiceMixingAllowed = json['voice_mixing_allowed'];
    featured = json['featured'];
    category = json['category'];
    readerAppEnabled = json['reader_app_enabled'];
    banReason = json['ban_reason'];
    likedByCount = json['liked_by_count'];
    clonedByCount = json['cloned_by_count'];
    name = json['name'];
    description = json['description'];
    labels = json['labels'] != null
        ? new FinetuningProgress.fromJson(json['labels'])
        : null;
    reviewStatus = json['review_status'];
    reviewMessage = json['review_message'];
    enabledInLibrary = json['enabled_in_library'];
    instagramUsername = json['instagram_username'];
    twitterUsername = json['twitter_username'];
    youtubeUsername = json['youtube_username'];
    tiktokUsername = json['tiktok_username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['history_item_sample_id'] = this.historyItemSampleId;
    data['date_unix'] = this.dateUnix;
    data['whitelisted_emails'] = this.whitelistedEmails;
    data['public_owner_id'] = this.publicOwnerId;
    data['original_voice_id'] = this.originalVoiceId;
    data['financial_rewards_enabled'] = this.financialRewardsEnabled;
    data['free_users_allowed'] = this.freeUsersAllowed;
    data['live_moderation_enabled'] = this.liveModerationEnabled;
    data['rate'] = this.rate;
    data['notice_period'] = this.noticePeriod;
    data['disable_at_unix'] = this.disableAtUnix;
    data['voice_mixing_allowed'] = this.voiceMixingAllowed;
    data['featured'] = this.featured;
    data['category'] = this.category;
    data['reader_app_enabled'] = this.readerAppEnabled;
    data['ban_reason'] = this.banReason;
    data['liked_by_count'] = this.likedByCount;
    data['cloned_by_count'] = this.clonedByCount;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.labels != null) {
      data['labels'] = this.labels!.toJson();
    }
    data['review_status'] = this.reviewStatus;
    data['review_message'] = this.reviewMessage;
    data['enabled_in_library'] = this.enabledInLibrary;
    data['instagram_username'] = this.instagramUsername;
    data['twitter_username'] = this.twitterUsername;
    data['youtube_username'] = this.youtubeUsername;
    data['tiktok_username'] = this.tiktokUsername;
    return data;
  }
}

class VoiceVerification {
  bool? requiresVerification;
  bool? isVerified;
  List<String>? verificationFailures;
  int? verificationAttemptsCount;
  String? language;
  List<VerificationAttempts>? verificationAttempts;

  VoiceVerification(
      {this.requiresVerification,
      this.isVerified,
      this.verificationFailures,
      this.verificationAttemptsCount,
      this.language,
      this.verificationAttempts});

  VoiceVerification.fromJson(Map<String, dynamic> json) {
    requiresVerification = json['requires_verification'];
    isVerified = json['is_verified'];
    verificationFailures = json['verification_failures'].cast<String>();
    verificationAttemptsCount = json['verification_attempts_count'];
    language = json['language'];
    if (json['verification_attempts'] != null) {
      verificationAttempts = <VerificationAttempts>[];
      json['verification_attempts'].forEach((v) {
        verificationAttempts!.add(new VerificationAttempts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requires_verification'] = this.requiresVerification;
    data['is_verified'] = this.isVerified;
    data['verification_failures'] = this.verificationFailures;
    data['verification_attempts_count'] = this.verificationAttemptsCount;
    data['language'] = this.language;
    if (this.verificationAttempts != null) {
      data['verification_attempts'] =
          this.verificationAttempts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Voice {
  String? voiceId;
  String? name;
  List<Samples>? samples;
  String? category;
  FineTuning? fineTuning;
  Labels? labels;
  String? description;
  String? previewUrl;
  List<String>? availableForTiers;
  Settings? settings;
  Sharing? sharing;
  List<String>? highQualityBaseModelIds;
  String? safetyControl;
  VoiceVerification? voiceVerification;
  String? ownerId;
  String? permissionOnResource;

  Voice(
      {this.voiceId,
      this.name,
      this.samples,
      this.category,
      this.fineTuning,
      this.labels,
      this.description,
      this.previewUrl,
      this.availableForTiers,
      this.settings,
      this.sharing,
      this.highQualityBaseModelIds,
      this.safetyControl,
      this.voiceVerification,
      this.ownerId,
      this.permissionOnResource});

  Voice.fromJson(Map<String, dynamic> json) {
    voiceId = json['voice_id'];
    name = json['name'];
    if (json['samples'] != null) {
      samples = <Samples>[];
      json['samples'].forEach((v) {
        samples!.add(new Samples.fromJson(v));
      });
    }
    category = json['category'];
    fineTuning = json['fine_tuning'] != null
        ? new FineTuning.fromJson(json['fine_tuning'])
        : null;
    labels =
        json['labels'] != null ? new Labels.fromJson(json['labels']) : null;
    description = json['description'];
    previewUrl = json['preview_url'];
    availableForTiers = json['available_for_tiers'].cast<String>();
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
    sharing =
        json['sharing'] != null ? new Sharing.fromJson(json['sharing']) : null;
    highQualityBaseModelIds =
        json['high_quality_base_model_ids'].cast<String>();
    safetyControl = json['safety_control'];
    voiceVerification = json['voice_verification'] != null
        ? new VoiceVerification.fromJson(json['voice_verification'])
        : null;
    ownerId = json['owner_id'];
    permissionOnResource = json['permission_on_resource'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['voice_id'] = this.voiceId;
    data['name'] = this.name;
    if (this.samples != null) {
      data['samples'] = this.samples!.map((v) => v.toJson()).toList();
    }
    data['category'] = this.category;
    if (this.fineTuning != null) {
      data['fine_tuning'] = this.fineTuning!.toJson();
    }
    if (this.labels != null) {
      data['labels'] = this.labels!.toJson();
    }
    data['description'] = this.description;
    data['preview_url'] = this.previewUrl;
    data['available_for_tiers'] = this.availableForTiers;
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    if (this.sharing != null) {
      data['sharing'] = this.sharing!.toJson();
    }
    data['high_quality_base_model_ids'] = this.highQualityBaseModelIds;
    data['safety_control'] = this.safetyControl;
    if (this.voiceVerification != null) {
      data['voice_verification'] = this.voiceVerification!.toJson();
    }
    data['owner_id'] = this.ownerId;
    data['permission_on_resource'] = this.permissionOnResource;
    return data;
  }
}

class Labels {
  String? accent;
  String? description;
  String? age;
  String? gender;
  String? useCase;

  Labels({this.accent, this.description, this.age, this.gender, this.useCase});

  Labels.fromJson(Map<String, dynamic> json) {
    accent = json['accent'];
    description = json['description'];
    age = json['age'];
    gender = json['gender'];
    useCase = json['use case'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accent'] = this.accent;
    data['description'] = this.description;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['use case'] = this.useCase;
    return data;
  }
}

enum FineTuningState<String> {
  notStarted,
  isFineTuning,
  fineTuned,
}

class FineTuningStateConverter
    implements JsonConverter<FineTuningState, String> {
  const FineTuningStateConverter();

  @override
  FineTuningState fromJson(String json) {
    switch (json) {
      case 'not_started':
        return FineTuningState.notStarted;
      case 'is_fine_tuning':
        return FineTuningState.isFineTuning;
      case 'fine_tuned':
        return FineTuningState.fineTuned;
      default:
        throw ArgumentError("Invalid fine tuning state: $json");
    }
  }

  @override
  String toJson(FineTuningState object) => object.toString().split('.').last;
}

/// Verification Attempt JSON Object
///
/// Nested within Voice response
/// Contains verification attempt metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class VerificationAttempt {
  @JsonKey(name: 'date_unix')
  final int dateUnix;
  @JsonKey(name: 'levenshtein_distance')
  final num levenshteinDistance;
  final Recording recording;
  final num similarity;
  final String text;

  VerificationAttempt({
    required this.dateUnix,
    required this.levenshteinDistance,
    required this.recording,
    required this.similarity,
    required this.text,
  });

  factory VerificationAttempt.fromJson(Map<String, dynamic> json) =>
      _$VerificationAttemptFromJson(json);

  Map<String, dynamic> toJson() => _$VerificationAttemptToJson(this);
}

/// Sample JSON Object
///
/// Nested within Voice response
/// Contains voice sample metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class Sample {
  @JsonKey(name: 'file_name')
  final String fileName;
  final String hash;
  @JsonKey(name: 'mime_type')
  final String mimeType;
  @JsonKey(name: 'sample_id')
  final String sampleId;
  @JsonKey(name: 'size_bytes')
  final int sizeBytes;

  Sample({
    required this.fileName,
    required this.hash,
    required this.mimeType,
    required this.sampleId,
    required this.sizeBytes,
  });

  factory Sample.fromJson(Map<String, dynamic> json) => _$SampleFromJson(json);

  Map<String, dynamic> toJson() => _$SampleToJson(this);
}

/// Add Voice Request JSON Object
///
/// Used to make /v1/voices/add API request
/// Requires name and files parameters
/// Can optionally pass description and labels
/// See ElevenLabs docs for more info
@JsonSerializable()
class AddVoiceRequest {
  final String? description;
  final List<String> files;
  final String? labels;
  @JsonKey(name: 'name')
  final String name;

  AddVoiceRequest({
    this.description,
    required this.files,
    this.labels,
    required this.name,
  });

  factory AddVoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$AddVoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddVoiceRequestToJson(this);

  FormData toFormData() {
    FormData data = FormData.fromMap({
      'name': name,
    });

    if (description != null) {
      data.fields.add(MapEntry('description', description!));
    }

    if (labels != null) {
      data.fields.add(MapEntry('labels', labels!));
    }

    for (var file in files) {
      data.files.add(MapEntry(
        'files',
        MultipartFile.fromFileSync(file),
      ));
    }
    return data;
  }
}

/// Add Voice Response JSON Object
///
/// Returned from /v1/voices/add API request
/// Contains new voice ID
/// See ElevenLabs docs for more info
@JsonSerializable()
class AddVoiceResponse {
  @JsonKey(name: 'voice_id')
  final String voiceId;

  AddVoiceResponse({
    required this.voiceId,
  });

  factory AddVoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$AddVoiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddVoiceResponseToJson(this);
}

/// Edit Voice Request JSON Object
///
/// Used to make /v1/voices/{voice_id}/edit API request
/// Requires name parameter
/// Can optionally pass description, files, and labels
/// See ElevenLabs docs for more info
@JsonSerializable()
class EditVoiceRequest {
  final String? description;
  final List<String>? files;
  final String? labels;
  @JsonKey(name: 'name')
  final String name;

  EditVoiceRequest({
    this.description,
    this.files,
    this.labels,
    required this.name,
  });

  factory EditVoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$EditVoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EditVoiceRequestToJson(this);

  FormData toFormData() {
    final formData = FormData();
    formData.fields.add(MapEntry('name', name));
    formData.fields.add(MapEntry('description', description ?? ""));
    formData.fields.add(MapEntry('labels', labels ?? ""));
    if (files != null) {
      for (var file in files!) {
        formData.files.add(MapEntry(
          'files',
          MultipartFile.fromFileSync(file),
        ));
      }
    }
    return formData;
  }
}

/// History JSON Object
///
/// Returned from /v1/history API endpoints
/// Contains history metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class History {
  @JsonKey(name: 'has_more')
  final bool hasMore;
  final List<HistoryItem> history;
  @JsonKey(name: 'last_history_item_id')
  final String lastHistoryItemId;

  History({
    required this.hasMore,
    required this.history,
    required this.lastHistoryItemId,
  });

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryToJson(this);
}

/// History Item JSON Object
///
/// Nested within History response
/// Contains history item metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class HistoryItem {
  @JsonKey(name: 'character_count_change_from')
  final int characterCountChangeFrom;
  @JsonKey(name: 'character_count_change_to')
  final int characterCountChangeTo;
  final String contentType;
  @JsonKey(name: 'date_unix')
  final int dateUnix;
  final Feedback feedback;
  @JsonKey(name: 'history_item_id')
  final String historyItemId;
  @JsonKey(name: 'request_id')
  final String requestId;
  final VoiceSettings settings;
  final StateEnum state;
  final String text;
  @JsonKey(name: 'voice_id')
  final String voiceId;
  @JsonKey(name: 'voice_name')
  final String voiceName;

  HistoryItem({
    required this.characterCountChangeFrom,
    required this.characterCountChangeTo,
    required this.contentType,
    required this.dateUnix,
    required this.feedback,
    required this.historyItemId,
    required this.requestId,
    required this.settings,
    required this.state,
    required this.text,
    required this.voiceId,
    required this.voiceName,
  });

  factory HistoryItem.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryItemToJson(this);
}

/// Feedback JSON Object
///
/// Nested within HistoryItem response
/// Contains feedback metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class Feedback {
  @JsonKey(name: 'audio_quality')
  final bool audioQuality;
  final bool emotions;
  final String feedback;
  final bool glitches;
  @JsonKey(name: 'inaccurate_clone')
  final bool inaccurateClone;
  final bool other;
  @JsonKey(name: 'review_status')
  final String reviewStatus;
  @JsonKey(name: 'thumbs_up')
  final bool thumbsUp;

  Feedback({
    required this.audioQuality,
    required this.emotions,
    required this.feedback,
    required this.glitches,
    required this.inaccurateClone,
    required this.other,
    required this.reviewStatus,
    required this.thumbsUp,
  });

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);

  Map<String, dynamic> toJson() => _$FeedbackToJson(this);
}

/// Download History Items Request JSON Object
///
/// Used to make /v1/history/download API request
/// Requires historyItemIds parameter
/// See ElevenLabs docs for more info
@JsonSerializable()
class DownloadHistoryItemsRequest {
  @JsonKey(name: 'history_item_ids')
  final List<String> historyItemIds;

  DownloadHistoryItemsRequest({
    required this.historyItemIds,
  });

  factory DownloadHistoryItemsRequest.fromJson(Map<String, dynamic> json) =>
      _$DownloadHistoryItemsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadHistoryItemsRequestToJson(this);
}

/// User JSON Object
///
/// Returned from the /v1/user API Endpoint
/// Contains user metadata and subscription info
@JsonSerializable()
class ElevenUser {
  @JsonKey(name: 'can_use_delayed_payment_methods')
  final bool canUseDelayedPaymentMethods;
  @JsonKey(name: 'is_new_user')
  final bool isNewUser;
  final SubscriptionInfo subscription;
  @JsonKey(name: 'xi_api_key')
  final String xiApiKey;

  ElevenUser({
    required this.canUseDelayedPaymentMethods,
    required this.isNewUser,
    required this.subscription,
    required this.xiApiKey,
  });

  factory ElevenUser.fromJson(Map<String, dynamic> json) =>
      _$ElevenUserFromJson(json);

  Map<String, dynamic> toJson() => _$ElevenUserToJson(this);
}

/// Subscription Info JSON Object
///
/// Returned from /v1/user API endpoints
/// Contains subscription metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class SubscriptionInfo {
  @JsonKey(name: 'allowed_to_extend_character_limit')
  final bool allowedToExtendCharacterLimit;
  @JsonKey(name: 'can_extend_character_limit')
  final bool canExtendCharacterLimit;
  @JsonKey(name: 'can_extend_voice_limit')
  final bool canExtendVoiceLimit;
  @JsonKey(name: 'can_use_instant_voice_cloning')
  final bool canUseInstantVoiceCloning;
  @JsonKey(name: 'can_use_professional_voice_cloning')
  final bool canUseProfessionalVoiceCloning;
  @JsonKey(name: 'character_count')
  final int characterCount;
  @JsonKey(name: 'character_limit')
  final int characterLimit;
  final String currency;
  @JsonKey(name: 'next_character_count_reset_unix')
  final int nextCharacterCountResetUnix;
  @JsonKey(name: 'professional_voice_limit')
  final int professionalVoiceLimit;
  final String status;
  final String tier;
  @JsonKey(name: 'voice_limit')
  final int voiceLimit;

  SubscriptionInfo({
    required this.allowedToExtendCharacterLimit,
    required this.canExtendCharacterLimit,
    required this.canExtendVoiceLimit,
    required this.canUseInstantVoiceCloning,
    required this.canUseProfessionalVoiceCloning,
    required this.characterCount,
    required this.characterLimit,
    required this.currency,
    required this.nextCharacterCountResetUnix,
    required this.professionalVoiceLimit,
    required this.status,
    required this.tier,
    required this.voiceLimit,
  });

  factory SubscriptionInfo.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionInfoToJson(this);
}

/// Extended Subscription Info JSON Object
///
/// Returned from /v1/user/subscription API endpoint
/// Contains extended subscription metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class ExtendedSubscriptionInfo {
  @JsonKey(name: 'allowed_to_extend_character_limit')
  final bool allowedToExtendCharacterLimit;
  @JsonKey(name: 'can_extend_character_limit')
  final bool canExtendCharacterLimit;
  @JsonKey(name: 'can_extend_voice_limit')
  final bool canExtendVoiceLimit;
  @JsonKey(name: 'can_use_instant_voice_cloning')
  final bool canUseInstantVoiceCloning;
  @JsonKey(name: 'can_use_professional_voice_cloning')
  final bool canUseProfessionalVoiceCloning;
  @JsonKey(name: 'character_count')
  final int characterCount;
  @JsonKey(name: 'character_limit')
  final int characterLimit;
  final String currency;
  @JsonKey(name: 'has_open_invoices')
  final bool hasOpenInvoices;
  @JsonKey(name: 'next_invoice')
  final NextInvoice nextInvoice;
  @JsonKey(name: 'professional_voice_limit')
  final int professionalVoiceLimit;
  final String status;
  final String tier;
  @JsonKey(name: 'voice_limit')
  final int voiceLimit;

  ExtendedSubscriptionInfo({
    required this.allowedToExtendCharacterLimit,
    required this.canExtendCharacterLimit,
    required this.canExtendVoiceLimit,
    required this.canUseInstantVoiceCloning,
    required this.canUseProfessionalVoiceCloning,
    required this.characterCount,
    required this.characterLimit,
    required this.currency,
    required this.hasOpenInvoices,
    required this.nextInvoice,
    required this.professionalVoiceLimit,
    required this.status,
    required this.tier,
    required this.voiceLimit,
  });

  factory ExtendedSubscriptionInfo.fromJson(Map<String, dynamic> json) =>
      _$ExtendedSubscriptionInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedSubscriptionInfoToJson(this);
}

/// Next Invoice JSON Object
///
/// Nested within ExtendedSubscriptionInfo response
/// Contains next invoice metadata
/// See ElevenLabs docs for more info
@JsonSerializable()
class NextInvoice {
  @JsonKey(name: 'amount_due_cents')
  final int amountDueCents;
  @JsonKey(name: 'next_payment_attempt_unix')
  final int nextPaymentAttemptUnix;

  NextInvoice({
    required this.amountDueCents,
    required this.nextPaymentAttemptUnix,
  });

  factory NextInvoice.fromJson(Map<String, dynamic> json) =>
      _$NextInvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$NextInvoiceToJson(this);
}
