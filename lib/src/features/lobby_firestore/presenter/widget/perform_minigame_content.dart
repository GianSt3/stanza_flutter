import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/firebase_constants.dart';
import '../../../minigame_setup/bloc/minigame_setup_cubit.dart';
import '../../../minigame_setup/perform/model/perform_firebase.dart';

class PerformMinigameContent extends StatefulWidget {
  const PerformMinigameContent({super.key});

  @override
  State<PerformMinigameContent> createState() => _PerformMinigameContentState();
}

class _PerformMinigameContentState extends State<PerformMinigameContent> {
  late DocumentReference _firebaseDocPerform;

  @override
  void initState() {
    super.initState();
    _firebaseDocPerform = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.minigame)
        .doc(FirebaseConstants.doc.perform);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinigameSetupCubit, MinigameSetupState>(
      builder: (context, state) {
        return state.status.maybeWhen(
          perform: () {
            if (state.data.perform == null) {
              return const Text('No perform data available');
            }
            return StreamBuilder<DocumentSnapshot>(
              stream: _firebaseDocPerform.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (!snapshot.hasData || snapshot.data == null) {
                  return const Text('No data available');
                }

                final data = snapshot.data!.data() as Map<String, dynamic>;
                final perform = PerformFirebase.fromJson(data);

                return Text('${perform.nickname}!');
              },
            );
          },
          orElse: () {
            return const Text('Waiting for perform data...');
          },
        );
      },
    );
  }
}
