import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages/kayitol.dart';

Widget alertDialoga() {
  return AlertDialog(
    title: const Text("İşleminiz Gerçekleşmiştir"),
    content: SizedBox(
      height: 45.h,
      child: Column(
        children: [
          Text("İsminiz  ${KayitOlPage.nametext.text} "),
          Text("Şifreniz : ${KayitOlPage.passwordtext.text}")
        ],
      ),
    ),
  );
}
