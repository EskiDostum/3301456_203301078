import 'package:flutter/material.dart';

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
    int butoncolor = 0XFFFFFFFF,
    Color buttonColor = Colors.red}) {
  return ElevatedButton(
      // primary kendi üstünde ayarlamalar yaparken onprimary önünde duracak üzerinden ayarlamalar yapmakta
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          elevation: valuelevation,
          minimumSize: const Size(0, 65),
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