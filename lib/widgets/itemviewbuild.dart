import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilprogramlamaodev/colors.dart';

//eşyaların yazıları ile birlikte ayrıntılı gösterildiği widget tasarımıdır
//
Widget itemviewcontainer({
  required List image,
  required List model,
  required List voltaj,
  required List olcu,
  required List fiyat,
}) {
  return
      // resim için kullanılan container
      Container(
          height: ScreenUtil().screenHeight - 92.h,
          margin: const EdgeInsets.only(bottom: 10),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      width: 150.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: image[index], fit: BoxFit.cover),
                          border: Border.all(width: 1, color: Colors.black)),
                    ),

                    // text bilgilerinin yazıldığı container
                    SizedBox(
                        width: 210.w,
                        height: 150.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Model : " + model[index], style: renkayari),
                            Text("Voltaj : " + voltaj[index], style: renkayari),
                            Text("Ölçüleri " + olcu[index], style: renkayari),
                            Text("Fiyatı = " + fiyat[index], style: renkayari)
                          ],
                        )),
                  ],
                );
              }));
}
