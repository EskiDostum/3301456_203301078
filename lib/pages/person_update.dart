// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/widgets/alertdialog.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/pages/kayitol.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';
import '../widgets/butonbuild1.dart';
import '../widgets/drawerbuild.dart';

class PersonUpdate extends StatefulWidget {
  const PersonUpdate({Key? key}) : super(key: key);
  static TextEditingController nametext = TextEditingController();
  static TextEditingController passwordtext = TextEditingController();
  static String name = "";
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
                      width: 50.w,
                    ),
                    Text(" Ad-Soyad = ${KayitOlPage.nametext.text} ")
                  ],
                ),
                // textformfiedl kısmı gelecek
                SizedBox(
                    width: 300.w,
                    height: 65.h,
                    child: buildinput(
                        helpertext: "Ad Soyad",
                        controller: KayitOlPage.nametext)),
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
                      controller: KayitOlPage.passwordtext,
                    )),
              ],
            ),
            butonbuild(
                text: "Güncelle",
                buttonColor: Colors.purple,
                valuelevation: 0.2,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alertDialoga();
                      });

                  setState(() {
                    PersonUpdate.name = KayitOlPage.nametext.text.toString();
                    KayitOlPage.nametext.text = "";

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
}
