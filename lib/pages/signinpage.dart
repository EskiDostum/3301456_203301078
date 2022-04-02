import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/butonbuild1.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';

class SignInpage extends StatelessWidget {
  const SignInpage({Key? key}) : super(key: key);
  static final TextEditingController nametext = TextEditingController();
  static final TextEditingController passwordtext = TextEditingController();
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
                            controller: nametext),
                      ),
                      const Text(
                        "Şifreniz",
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        height: 65.h,
                        width: 300.w,
                        child: buildinput(
                            helpertext: "Şifreniz", controller: passwordtext),
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
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
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
