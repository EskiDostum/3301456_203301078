// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';

// screenutilinit hızlı başlangıç rehberinde yazılarak başlayınız dediğinden ötürü kullanılmıştır
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

// kodu çaldım hızlı başlangıç rehberi olarak kullanılması gerektiği yazıyor
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode:
            true, // telefonya yarım ekran olarak kullanmaya yarıyor  kısaca ekranı 2 ye bölüp üst tarafta kullanmana yarıyor
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner:
                  false, // Appbar üzerindeki debug yazısını siliyor
              defaultTransition: Transition.native, // batuya sor
              themeMode: ThemeMode
                  .dark, // ekran themasını karartma veya aydınlık yapma ( karanlık mod aydınlık mod ..)
              popGesture:
                  Get.isPopGestureEnable, // ekran kaydırarak  geri ileri yapma
              transitionDuration:
                  const Duration(milliseconds: 230), // sayfalar arası dlay
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            ));
  }
}
