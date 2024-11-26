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
  String _firebaseDocId = "";

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
                    final doc = await FirebaseFirestore.instance
                        .collection("funroom")
                        .add({
                      'text': "open",
                      'roomId': _roomId.text,
                      'timestamp': FieldValue.serverTimestamp()
                    });

                    setState(() {
                      _firebaseDocId = doc.id;
                      hasStarted = true;
                    });
                  }
                : null,
            child: Text("START")),
        TextButton(
            onPressed: hasStarted
                ? () async {
                    await FirebaseFirestore.instance
                        .collection("funroom")
                        .doc(_firebaseDocId)
                        .delete();
                    setState(() {
                      hasStarted = false;
                    });
                  }
                : null,
            child: Text("STOP"))
      ],
    );
  }

  String getRandomRoomId({int times = 4, String rnd = ""}) {
    print("times $times result $rnd");
    const String characters =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    final char = characters[Random().nextInt(characters.length)];
    final result = rnd + char;
    if (times <= 0) {
      return result;
    } else {
      return getRandomRoomId(times: times - 1, rnd: result);
    }
  }
}
