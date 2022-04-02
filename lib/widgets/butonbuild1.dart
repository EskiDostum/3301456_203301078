import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// DETAYLI BUTON TASARIMI
// bu widget insanların bilgilerinde kullanılacak
//flexible düzen düzen için kullanılmaktadır
Widget butonbuild(
    // buton görselleştirme için gerekli değişkenler text ve onPressed gereklidir  diğerleri girilirse özelleştirme sağlanır
    {required String text,
    IconData icon = Icons.abc,
    required Function onPressed,
    double valuelevation = 10.0,
    double fontsizevalue = 30.0,
    Color buttonColor = Colors.white}) {
  return ElevatedButton(
      // primary kendi üstünde ayarlamalar yaparken onprimary önünde duracak üzerinden ayarlamalar yapmakta
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          elevation: valuelevation,
          minimumSize: Size(0.w, 65.h),
          onPrimary: Colors.blueGrey),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 15,
            // butonda gösterilecek olan text ayarlarının yapıldığı yer
            child: Text(
              text,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          // icon ayarlamalarının yapıldığı yer
          Flexible(fit: FlexFit.tight, flex: 1, child: Icon(icon))
        ],
      ),
      onPressed: () {
        onPressed();
      });
}
