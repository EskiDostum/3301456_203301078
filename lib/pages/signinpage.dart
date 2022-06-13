import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/alertdialog.dart';
import 'package:mobilprogramlamaodev/widgets/butonbuild1.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';

class SignInpage extends StatefulWidget {
  SignInpage({Key? key}) : super(key: key);

  @override
  State<SignInpage> createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  final TextEditingController nametextlo = TextEditingController();

  final TextEditingController passwordtextlo = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 700.w,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF1A237E),
            Color(0xFF00695C),
            Color(0xFF006064),
            Color(0xFF455A64),
            Color(0xFF303030),
            // renklendirme aşamasında nereden başlayıp nereye doğru renk geçisi olacağını gösteren kod
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(
                child: Text(
                  "Sayfamıza Hoşgeldiniz",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "İsminiz",
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        height: 65.h,
                        width: 300.w,
                        child: buildinput(
                            helpertext: "Kullanıcı Adınız",
                            controller: nametextlo),
                      ),
                      const Text(
                        "Şifreniz",
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        height: 65.h,
                        width: 300.w,
                        child: buildinput(
                            helpertext: "Şifreniz", controller: passwordtextlo),
                      ),
                    ]),
              ),
              Row(
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: butonbuild(
                        buttonColor: Colors.blueGrey.shade800,
                        text: " Giriş",
                        onPressed: () async {
                          try {
                            var _userCredantial =
                                await auth.signInWithEmailAndPassword(
                                    email: nametextlo.text,
                                    password: passwordtextlo.text);
                            Get.toNamed(Routes.HOME);
                          } catch (e) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alertDialoga(
                                      text1: "işlem hatalıdır ");
                                });
                          }
                        },
                        valuelevation: 0,
                      )),
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: butonbuild(
                          buttonColor: Colors.blueGrey.shade800,
                          text: "KAYIT OL",
                          onPressed: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          valuelevation: 0))
                ],
              )
            ],
          )),
    );
  }
}
