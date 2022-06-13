import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Firestorecode extends StatelessWidget {
  Firestorecode({Key? key}) : super(key: key);
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              userdatadd();
            },
            child: const Text("eleman ekle ")),
      ),
    );
  }

  userdatadd() async {
    var userId = _firestore.collection("Users").id;
    Map<String, dynamic> _adduser = <String, dynamic>{};
    _adduser["Name"] = "Eski";
    _adduser["Lastname"] = "Dostum";
    _adduser["E-Mail"] = "Eskidostum17@hotmail.com";
    _adduser["password"] = "atyalanı";
    _adduser["Userid"] = userId;
    await _firestore.collection("Users").add(_adduser);
  }

//
  userdatasett() async {}
}
