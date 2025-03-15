import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/firebase_constants.dart';
import '../../../minigame_setup/bloc/minigame_setup_cubit.dart';
import '../../model/pressed_firebase.dart';
import 'pressed/pressed_content.dart';

class PressedMinigameContent extends StatefulWidget {
  const PressedMinigameContent({super.key});

  @override
  State<PressedMinigameContent> createState() => _PressedMinigameContentState();
}

class _PressedMinigameContentState extends State<PressedMinigameContent> {
  late CollectionReference _firebaseCollectionPressed;

  @override
  void initState() {
    super.initState();
    _firebaseCollectionPressed = FirebaseFirestore.instance
        .collection(FirebaseConstants.collection.pressedTimesCollection);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return BlocBuilder<MinigameSetupCubit, MinigameSetupState>(
          builder: (context, state) {
        return state.status.maybeWhen(
          press: () {
            return StreamBuilder<QuerySnapshot>(
              stream: _firebaseCollectionPressed.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (!snapshot.hasData || snapshot.data == null) {
                  return const Text('No data available');
                }
                final List<PressedFromFirebase> times =
                    snapshot.data!.docs.map((doc) {
                  final data = doc.data() as Map<String, dynamic>;
                  return PressedFromFirebase.fromJson(data);
                }).toList();

                return PressedContent(pressed: times);
              },
            );
          },
          orElse: () => const Text('No data available'),
        );
      });
    });
  }
}
