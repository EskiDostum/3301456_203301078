// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/constants.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';
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
      appBar: appbar,
      drawer: DrawerBuildWidget(),
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
                    Text(" Ad-Soyad = $namelastname ")
                  ],
                ),
                // textformfiedl kısmı gelecek
                SizedBox(width: 300, height: 65, child: namelastname),
                Row(
                  children: [
                    Container(
                      width: 50,
                    ),
                    const Text("Şifreniz")
                  ],
                ),
                // textformfiedl kısmı gelecek
                SizedBox(width: 300, height: 65, child: password),
              ],
            ),
            butonbuild(
                text: "Güncelle",
                buttonColor: Colors.purple,
                valuelevation: 0.2,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

var namelastname = buildinput(helpertext: "Ad-Soyad");
var password = buildinput(helpertext: "");
