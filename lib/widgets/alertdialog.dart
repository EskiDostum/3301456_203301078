import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget alertDialoga({required String text1}) {
  return AlertDialog(
    title: const Text("İşleminiz Gerçekleşmiştir"),
    content: SizedBox(
      height: 45.h,
      child: Column(
        children: [Text(text1.toString())],
      ),
    ),
  );
}
