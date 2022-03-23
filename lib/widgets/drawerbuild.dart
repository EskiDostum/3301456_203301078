import 'package:flutter/material.dart';
import 'butonbuild2.dart';

// Drawer
Widget drawerbuild() {
  return SizedBox(
    // normalde container hata olursa dönüştür
    width: 255,
    height: 1000,
    child: Drawer(
      backgroundColor: const Color(0xFFFFAB40), // drawer renk ayarı
      child: Column(children: [
        // appbar tarzında yaptığım bir container
        Container(
          // üst başlık ayarları
          height: 150,
          width: 500,
          color: Colors.amber,
          child: const Center(child: Text("hoşgeldiniz sefalar getirdiniz")),
        ),

        // sayfalar arasındaki geçişi gösterecek olan sayfa
        Column(
          children: [
            butonbuild2(text: "Ana sayfa ", icon: Icons.home, onPressed: () {}),
            butonbuild2(
                text: "Kullanıcı Bilgileri",
                onPressed: () {},
                icon: Icons.person),
            butonbuild2(
                text: "Araba Markaları",
                onPressed: () {},
                icon: Icons.directions_car),
            butonbuild2(
                text: "Çıkış", onPressed: () {}, icon: Icons.login_outlined),
          ],
        ),
      ]),
    ),
  );
}
//TEXT İNPUT GÖSTERMEKTEDİR
//initialtext ise giriş yapacağımız yerdeki yazıyı tanımlamaktadır
// helper text çizginin altında yazılacak yazıyı tanımlamaktadır
