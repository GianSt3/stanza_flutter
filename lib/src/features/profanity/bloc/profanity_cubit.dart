import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/utils.dart';
import '../model/profanity_firebase.dart';

part 'profanity_cubit.freezed.dart';
part 'profanity_state.dart';

class ProfanityCubit extends Cubit<ProfanityState> {
  ProfanityCubit() : super(const ProfanityState.initial()) {
    _init();
  }

  late DocumentReference<ProfanityFirebase?> _firebaseDocProfanity;

  void _init() {
    _firebaseDocProfanity = FirebaseFirestore.instance
        .collection('_config')
        .doc('profanity')
        .withConverter<ProfanityFirebase?>(
          fromFirestore: (snapshot, _) => snapshot.data() != null
              ? ProfanityFirebase.fromJson(snapshot.data()!)
              : null,
          toFirestore: (profanity, _) => profanity?.toJson() ?? {},
        );

    _firebaseDocProfanity.snapshots().listen((event) {
      final profanity = event.data();
      if (profanity != null) {
        emit(ProfanityState.loaded(profanity.words));
      }
    });
  }

  void _initializeWords() {
    final Map<String, String> wordMap = {
      'bastardo': 'maleducato',
      'bastarda': 'maleducata',
      'stronzo': 'sgradevole',
      'stronza': 'sgradevole',
      'coglione': 'sciocco',
      'cogliona': 'sciocca',
      'frocio': 'omosessuale',
      'frocia': 'omosessuale',
      'ricchione': 'omosessuale',
      'ricchiona': 'omosessuale',
      'puttana': 'donnaccia',
      'troia': 'persona promiscua',
      'zoccola': 'persona di facili costumi',
      'mignotta': 'escort',
      'baldracca': 'poco di buono',
      'bagascia': 'persona discutibile',
      'cazzo': 'incidenti',
      'fica': 'ragazza',
      'figa': 'bella ragazza',
      'minchia': 'accidenti',
      'pompino': 'atto intimo',
      'sborra': 'liquido',
      'scopare': 'avere rapporti',
      'trombare': 'andare a letto con',
      'merda': 'brutta situazione',
      'cagare': 'ignorare',
      'pisciare': 'urinare',
      'vaffanculo': 'vai via',
      'vaffanbagno': 'vai a quel paese',
      'figlio di puttana': 'figlio di buona donna',
      'figlia di puttana': 'figlia di buona donna',
      'testa di cazzo': 'testa vuota',
      'pezzo di merda': 'persona sgradevole',
      'suca': 'lascia perdere',
      'cazzone': 'sciocco',
      'schifo': 'disgusto',
      'porco dio': 'accidenti',
      'dio cane': 'maledizione',
      'dio porco': 'cavolo',
      'madonna troia': 'santa pazienza',
      'cristo ladro': 'accidenti',
      'madonna puttana': 'mamma mia',
      'madonna bastarda': 'mamma mia',
      'gesù porco': 'caspita',
      'gesù ladro': 'cielo santo',
      'porca madonna': 'accidenti',
      'porco zio': 'caspita',
      'madonna ladra': 'mamma mia',
      'gesù cane': 'cielo santo',
      'gesù bastardo': 'accidenti',
      'cristo infame': 'cielo santo',
      'dio maledetto': 'cielo santo',
      'cristo porco': 'cielo santo',
      'madonna infame': 'santa pazienza',
      'madonna schifosa': 'santa pazienza',
      'dio schifoso': 'accidenti',
      'cristo bestia': 'cielo santo',
      'porco gesù': 'cielo santo',
      'madonna cane': 'santa pazienza',
      'cristo sacrilego': 'cielo santo',
      'dio lurido': 'accidenti',
      'madonna sacrilega': 'santa pazienza',
      'm4d0nn4': 'madonna',
      'p0rc0 d10': 'porco dio',
      'cr1st0 l4dr0': 'cristo ladro',
      'g3sù p0rc0': 'gesù porco',
      'v4ff4ncul0': 'vaffanculo',
      'tr0i4': 'troia',
      'p1sc14r3': 'pisciare',
      'c4g4r3': 'cagare',
      'd10 c4n3': 'dio cane',
      'm4r3mm4 m41al4': 'maremma maiala',
    };
    final List<ProfanityWord> words = wordMap.entries
        .map((e) => ProfanityWord(word: e.key, replace: e.value))
        .toList();
    _firebaseDocProfanity.set(ProfanityFirebase(words: words));
  }

  void addWord(ProfanityWord newWord) async {
    if (state
        .maybeMap(loaded: (loaded) => loaded.words, orElse: () => [])
        .any((w) => w.word == newWord.word)) {
      logger.w('Word already exists');
      return;
    }
    final profanitySnapshot = await _firebaseDocProfanity.get();
    final ProfanityFirebase? data = profanitySnapshot.data();
    final words = data?.words ?? [];
    words.add(newWord);
    await _firebaseDocProfanity.set(ProfanityFirebase(words: words));
    emit(ProfanityState.loaded(words));
  }

  void remove(String word) async {
    final profanitySnapshot = await _firebaseDocProfanity.get();
    final ProfanityFirebase? data = profanitySnapshot.data();
    final words = data?.words ?? [];
    words.removeWhere((w) => w.word == word);
    await _firebaseDocProfanity.set(ProfanityFirebase(words: words));
    emit(ProfanityState.loaded(words));
  }

  void updateWord(String oldWord, ProfanityWord updatedWord) async {
    final profanitySnapshot = await _firebaseDocProfanity.get();
    final ProfanityFirebase? data = profanitySnapshot.data();
    final words = data?.words ?? [];
    final index = words.indexWhere((w) => w.word == oldWord);
    if (index != -1) {
      words[index] = updatedWord;
      await _firebaseDocProfanity.set(ProfanityFirebase(words: words));
      emit(ProfanityState.loaded(words));
    } else {
      logger.w('Word not found');
    }
  }
}
