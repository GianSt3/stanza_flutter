import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../minigame_setup/poll/model/poll_firebase.dart';

class PollMinigameContent extends StatefulWidget {
  const PollMinigameContent({super.key});

  @override
  State<PollMinigameContent> createState() => _PollMinigameContentState();
}

class _PollMinigameContentState extends State<PollMinigameContent> {
  late DocumentReference<PollFirebase?> _firebaseDocPoll;

  @override
  void initState() {
    super.initState();
    _firebaseDocPoll = FirebaseFirestore.instance
        .collection('_minigame')
        .doc('poll')
        .withConverter<PollFirebase?>(
          fromFirestore: (snapshot, _) => snapshot.data() != null
              ? PollFirebase.fromJson(snapshot.data()!)
              : null,
          toFirestore: (poll, _) => poll?.toJson() ?? {},
        );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<PollFirebase?>>(
      stream: _firebaseDocPoll.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (!snapshot.hasData ||
            snapshot.data == null ||
            !snapshot.data!.exists) {
          return const Text('No data available');
        }

        final pollData = snapshot.data!.data();
        if (pollData == null) {
          return const Text('No data available');
        }

        return ListView.builder(
          itemCount: pollData.answers.length,
          itemBuilder: (context, index) {
            final answer = pollData.answers[index];
            return ListTile(
              title: Text(answer.text),
              subtitle: Text('Votes: '),
            );
          },
        );
      },
    );
  }
}
