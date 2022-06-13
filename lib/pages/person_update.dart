// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';
import '../widgets/butonbuild1.dart';
import '../widgets/drawerbuild.dart';

class PersonUpdate extends StatefulWidget {
  const PersonUpdate({Key? key}) : super(key: key);

  @override
  State<PersonUpdate> createState() => _PersonUpdateState();
}

class _PersonUpdateState extends State<PersonUpdate> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController emailu = TextEditingController();
  TextEditingController passwordtextu = TextEditingController();

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
                // Row(
                //   children: [
                //     Container(
                //       width: 50.w,
                //     ),
                //     Text(" Maili = ${emailu} ")
                //   ],
                // ),
                // textformfiedl kısmı gelecek
                SizedBox(
                    width: 300.w,
                    height: 65.h,
                    child: buildinput(
                        helpertext: "E-Mail adresinizi Giriniz",
                        controller: emailu)),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                    ),
                    const Text("Şifreniz")
                  ],
                ),
                // textformfiedl kısmı gelecek
                SizedBox(
                    width: 300.w,
                    height: 65.h,
                    child: buildinput(
                      helpertext: "Şifreniz",
                      controller: passwordtextu,
                    )),
              ],
            ),
            butonbuild(
                text: "Güncelle",
                buttonColor: Colors.purple,
                valuelevation: 0.2,
                onPressed: () async {
                  dataupdate();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        //  return alertDialoga();
                        return Text("");
                      });

                  setState(() {
                    Future.delayed(const Duration(seconds: 3), () {
                      Get.toNamed(Routes.HOME);
                    });
                  });
                }),
          ],
        ),
      ),
    );
  }

  dataupdate() async {
    _firestore
        .doc("Users/Ph0b8NdNUPaVBLR7mmkc")
        .update({"E-Mail": emailu.text, "password": passwordtextu.text});
  }
}
