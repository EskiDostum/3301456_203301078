import 'package:flutter/material.dart';
import '../widgets/butonbuild1.dart';
import '../widgets/drawerbuild.dart';
import 'errorpage.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: drawerbuild(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          butonbuild(text: "Kişisel Bilgileri Güncelle", onPressed: () {}),
          butonbuild(
              text: "Kart Bilgileri",
              onPressed: () {
                runApp(const MaterialApp(
                  home: ErrorPage(),
                ));
              }),
          butonbuild(
              text: "Beğendiklerin",
              onPressed: () {
                runApp(const MaterialApp(
                  home: ErrorPage(),
                ));
              }),
          butonbuild(
              text: "Siparişlerin",
              onPressed: () {
                runApp(const MaterialApp(
                  home: ErrorPage(),
                ));
              }),
          butonbuild(
              text: "Adres Bilgilerin",
              onPressed: () {
                runApp(const MaterialApp(
                  home: ErrorPage(),
                ));
              }),
        ],
      ),
    );
  }
}
