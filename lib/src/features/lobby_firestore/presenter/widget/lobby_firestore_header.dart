import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LobbyFirestoreHeader extends StatefulWidget {
  const LobbyFirestoreHeader({super.key});

  @override
  State<LobbyFirestoreHeader> createState() => _LobbyFirestoreHeaderState();
}

class _LobbyFirestoreHeaderState extends State<LobbyFirestoreHeader> {
  final TextEditingController _roomId = TextEditingController();
  final TextEditingController _gameVersion =
      TextEditingController(text: '0.1.0');

  bool hasStarted = false;
  late DocumentReference _firebaseDoc;

  late StreamSubscription _streamSubscription;

  final ScrollController _scrollController = ScrollController();

  bool showChat = true;

  @override
  void initState() {
    super.initState();
    _firebaseDoc =
        FirebaseFirestore.instance.collection("_config").doc("funroom");
    _streamSubscription = FirebaseFirestore.instance
        .collection('_config')
        .doc("funroom")
        .snapshots()
        .listen((snapshot) {
      if (!snapshot.exists) {
        return;
      }
      final data = snapshot.data();
      if (data != null) {
        _updateGameAvailable(data['game'] as bool);
      }
    });
  }

  void _updateGameAvailable(bool started) {
    setState(() {
      hasStarted = started;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _roomId.dispose();
    _gameVersion.dispose();
    _streamSubscription.cancel();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 150,
              child: TextField(
                enabled: !hasStarted,
                controller: _gameVersion,
                decoration: const InputDecoration(labelText: "Game Version"),
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            SizedBox(
              width: 150,
              child: TextField(
                enabled: !hasStarted,
                controller: _roomId,
                decoration: const InputDecoration(labelText: "Room Id"),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _roomId.text = getRandomRoomCodeId();
                });
              },
              child: Text("Generate Room Id"),
            ),
            TextButton(
              onPressed: !hasStarted
                  ? () async {
                      _firebaseDoc.set({
                        'game': true,
                        'gameVersion': _gameVersion.text,
                        "room": _roomId.text,
                        'timestamp': FieldValue.serverTimestamp()
                      });
                    }
                  : null,
              child: Text("START"),
            ),
            TextButton(
              onPressed: hasStarted
                  ? () async {
                      _firebaseDoc.update({
                        "game": false,
                        'timestamp': FieldValue.serverTimestamp()
                      });
                    }
                  : null,
              child: Text("STOP"),
            ),

            // Move Button on the right
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  showChat = !showChat;
                });
              },
              icon: showChat
                  ? const Icon(Icons.bug_report)
                  : const Icon(Icons.bug_report_outlined),
              color: showChat ? Colors.black : Colors.green.shade700,
            ),
          ],
        ),
        Visibility(
          visible: showChat,
          child: SizedBox(
            height: 300,
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("messages")
                    .orderBy('timestamp')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final messages = snapshot.data?.docs ?? [];
                    if (messages.isEmpty) {
                      return Text("No messages");
                    }
                    // Scroll to the bottom when new data arrives
                    WidgetsBinding.instance
                        .addPostFrameCallback((_) => _scrollToBottom());

                    return ListView.builder(
                        controller: _scrollController,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index].data();
                          return Text(
                              "${(message['timestamp'] as Timestamp).toDate()} - ${message['nickname']}: ${message['message']}");
                        });
                  }

                  return Text("No data");
                }),
          ),
        ),
      ],
    );
  }

  String getRandomRoomId({int times = 4, String rnd = ""}) {
    const String characters =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
    final char = characters[Random().nextInt(characters.length)];
    final result = rnd + char;
    if (times <= 0) {
      return result;
    } else {
      return getRandomRoomId(times: times - 1, rnd: result);
    }
  }

  String getRandomRoomCodeId({int times = 3, String rnd = ""}) {
    const String digits = "0123456789";
    final char = digits[Random().nextInt(digits.length)];
    final result = rnd + char;
    if (times <= 0) {
      return result;
    } else {
      return getRandomRoomCodeId(times: times - 1, rnd: result);
    }
  }
}
