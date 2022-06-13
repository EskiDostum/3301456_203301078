import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

class GesturesPage extends StatelessWidget {
  const GesturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: <Widget>[
          GestureDetector(
            //başarılı
            onDoubleTap: () => Get.toNamed(Routes.PERSONUPDATE),
            child: Container(
              color: Colors.amber,
              alignment: Alignment.center,
              height: 30.h,
              width: 200.w,
              child: const Text("""Kişisel Bilgileri Günceller
               double tap 
              """),
            ),
          ),
          GestureDetector(
            //başarılı
            onLongPress: () => Get.toNamed(Routes.ERROR),
            child: Container(
              color: Colors.blueAccent,
              alignment: Alignment.center,
              height: 30.h,
              width: 200.w,
              child: const Text("""KartBilgileri
              longpress"""),
            ),
          ),
          GestureDetector(
            // başarılı
            onTap: () => Get.toNamed(Routes.ERROR),
            child: Container(
              color: Colors.cyan,
              alignment: Alignment.center,
              height: 30.h,
              width: 200.w,
              child: const Text("""Beğendiklerim
              Ontap"""),
            ),
          ),
          GestureDetector(
            //başarılı
            onTap: () => Get.toNamed(Routes.ERROR),
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              height: 30.h,
              width: 200.w,
              child: const Text("""Siparişlerim
              """),
            ),
          ),
          GestureDetector(
            //başarılı
            onTap: () => Get.toNamed(Routes.ERROR),
            child: Container(
              color: Colors.lime,
              alignment: Alignment.center,
              height: 30.h,
              width: 200.w,
              child: const Text("""Adres Bilgileri
              """),
            ),
          )
        ],
      ),
    );
  }
}
