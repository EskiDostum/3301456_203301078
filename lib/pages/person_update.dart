// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/butonbuild1.dart';
import '../widgets/drawerbuild.dart';

class PersonUpdate extends StatefulWidget {
  const PersonUpdate({Key? key}) : super(key: key);

  @override
  State<PersonUpdate> createState() => _PersonUpdateState();
}

class _PersonUpdateState extends State<PersonUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: drawerbuild(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.orange, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(
              child: Text(
                "Kullanıcı Bilgileri",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                    ),
                    const Text(" isim :")
                  ],
                ),
                // textformfiedl kısmı gelecek
                SizedBox(width: 300, height: 65, child: Text("data")),
                Row(
                  children: [
                    Container(
                      width: 50,
                    ),
                    const Text(" Soyisim ")
                  ],
                ),
                // textformfiedl kısmı gelecek
                SizedBox(width: 300, height: 65, child: Text("data")),
              ],
            ),
            butonbuild(
                text: "Güncelle",
                butoncolor: 0xFF883BA0,
                valuelevation: 0.2,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
