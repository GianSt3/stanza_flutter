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
  bool hasStarted = false;
  late DocumentReference _firebaseDoc;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade100,
      child: Column(
        children: [
          Row(
            children: [
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
                      _roomId.text = getRandomRoomId();
                    });
                  },
                  child: Text("Generate Room Id")),
            ],
          ),
          TextButton(
            onPressed: !hasStarted
                ? () async {
                    final doc = FirebaseFirestore.instance
                        .collection("_config")
                        .doc("funroom");

                    doc.set({
                      'game': true,
                      'gameVersion': '0.1.0',
                      'timestamp': FieldValue.serverTimestamp()
                    });

                    setState(() {
                      _firebaseDoc = doc;
                      hasStarted = true;
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
                    setState(() {
                      hasStarted = false;
                    });
                  }
                : null,
            child: Text("STOP"),
          ),
          SizedBox(
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
                    return ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index].data();
                          return Text(
                              "${message['nickname']}: ${message['message']}");
                        });
                  }

                  return Text("No data");
                }),
          ),
        ],
      ),
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
}
