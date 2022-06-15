import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'butonbuild2.dart';
import 'package:get/get.dart';

class DrawerBuildWidget extends StatelessWidget {
  const DrawerBuildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
// Drawer
    return SizedBox(
      // normalde container hata olursa dönüştür
      width: 255.w,
      height: 1000.h,
      child: Drawer(
        backgroundColor: Colors.brown, // drawer renk ayarı
        child: Column(children: [
          // appbar tarzında yaptığım bir container
          Container(
            // üst başlık ayarları
            height: 150.h,
            width: 500.w,

            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF1A237E),
                Color(0xFF00695C),
                Color(0xFF006064),
                Color(0xFF455A64),
                Color(0xFF303030)
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
            child: const Center(child: Text("hoşgeldiniz sefalar getirdiniz")),
          ),

          // sayfalar arasındaki geçişi gösterecek olan sayfa
          Column(
            children: [
              butonbuild2(
                  text: "Ana sayfa ",
                  icon: Icons.home,
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  }),
              butonbuild2(
                  text: "Kullanıcı Bilgileri",
                  onPressed: () {
                    Get.toNamed(Routes.SETTINGS);
                  },
                  icon: Icons.person),
              butonbuild2(
                  text: "Makinelerimiz",
                  onPressed: () {
                    Get.toNamed(Routes.PRODUCSET);
                  },
                  icon: Icons.add_task),
              butonbuild2(
                  icon: Icons.login,
                  text: "Giriş ",
                  onPressed: () {
                    Get.toNamed(Routes.SIGNIN);
                  }),
              butonbuild2(
                  text: "Çıkış",
                  onPressed: () {
                    auth.signOut();
                    Get.toNamed(Routes.SIGNIN);
                  },
                  icon: Icons.logout),
              butonbuild2(
                  text: "Animasyon",
                  onPressed: () {
                    Get.toNamed(Routes.Animationone);
                  },
                  icon: Icons.animation),
              butonbuild2(
                  text: "Gestures ",
                  onPressed: () {
                    Get.toNamed(Routes.gesture);
                  },
                  icon: Icons.gesture),
              butonbuild2(
                  text: "sqflite  ",
                  onPressed: () {
                    Get.toNamed(Routes.litedata);
                  },
                  icon: Icons.memory_sharp),
            ],
          ),
        ]),
      ),
    );
  }
}
