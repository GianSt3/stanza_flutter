import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/gen/fonts.gen.dart';
import '../../../../../core/constants/firebase_constants.dart';
import '../../../../widget/stroke_text_widget.dart';
import '../../../minigame_setup/bloc/minigame_setup_cubit.dart';
import '../../../minigame_setup/poll/model/poll_firebase.dart';
import '../../usecases/max_vote_use_case.dart';

part './poll/answer.dart';
part './poll/poll_content.dart';
part './poll/vote_widget.dart';

// TODO mostra il voto più alto in caso di pareggio
class PollMinigameContent extends StatefulWidget {
  final int maxVotes;

  const PollMinigameContent({super.key, required this.maxVotes});

  @override
  State<PollMinigameContent> createState() => _PollMinigameContentState();
}

class _PollMinigameContentState extends State<PollMinigameContent> {
  late CollectionReference _firebaseCollectionVotes;

  @override
  void initState() {
    super.initState();
    _firebaseCollectionVotes = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.pollVotes);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) =>
          BlocBuilder<MinigameSetupCubit, MinigameSetupState>(
        builder: (context, state) {
          return state.status.maybeWhen(
            poll: () {
              if (state.data.poll == null) {
                return const Text('No poll data available');
              }
              return StreamBuilder<QuerySnapshot>(
                stream: _firebaseCollectionVotes.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (!snapshot.hasData || snapshot.data == null) {
                    return const Text('No data available');
                  }

                  final List<Answer> votes = snapshot.data!.docs.map((doc) {
                    final data = doc.data() as Map<String, dynamic>;
                    return Answer.fromJson(
                        data['answer'] as Map<String, dynamic>);
                  }).toList();

                  return _PollContent(
                      poll: state.data.poll!,
                      constraints: constraints,
                      maxVotes: widget.maxVotes,
                      votes: votes);
                },
              );
            },
            orElse: () {
              return const Text('Waiting for poll data...');
            },
          );
        },
      ),
    );
  }
}
