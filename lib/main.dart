// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/pages/errorpage.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

// kodu çaldım
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              title: "rahjlşks",
              debugShowCheckedModeBanner: false,
              defaultTransition: Transition.cupertino,
              themeMode: ThemeMode.dark,
              opaqueRoute: Get.isOpaqueRouteDefault,
              popGesture: Get.isPopGestureEnable,
              transitionDuration: const Duration(milliseconds: 230),
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            ));
  }
}
