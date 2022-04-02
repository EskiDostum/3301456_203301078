import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// SADE BUTON TASARIMI
// biraz daha sade buton tasarımı
Widget butonbuild2(
    // buton görselleştirme için gerekli değişkenler text ve onPressed gereklidir  diğerleri girilirse özelleştirme sağlanır
    {
  required String text,
  IconData icon = Icons.abc,
  required Function onPressed,
}) {
  return ElevatedButton(
    // primary kendi üstünde ayarlamalar yaparken onprimary önünde duracak üzerinden ayarlamalar yapmakta
    style: ElevatedButton.styleFrom(
        primary: const Color(0xFFFFAB40),
        elevation: 0,
        maximumSize: Size(250.w, 60.h),
        minimumSize: Size(0.w, 45.h),
        onPrimary: Colors.blueGrey),
    onPressed: () {
      onPressed();
    },
    child: Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 9,
          // butonda gösterilecek olan text ayarlarının yapıldığı yer
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        // icon ayarlamalarının yapıldığı yer
        Flexible(fit: FlexFit.tight, flex: 1, child: Icon(icon))
      ],
    ),
  );
}
