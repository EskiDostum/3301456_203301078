import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/butonbuild1.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

import '../../models/colors.dart';

class ProductSettingPage extends StatelessWidget {
  const ProductSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Column(
        children: [
          butonbuild(
              text: "Kıyma  Makineleri ",
              onPressed: () {
                Get.toNamed(Routes.KIYMA);
              }),
          butonbuild(
              text: "Et ve Kemik Testereleri ",
              onPressed: () {
                Get.toNamed(Routes.TESTERE);
              }),
          butonbuild(
              text: "Karıştırıcılı Kıyma Makinaları",
              onPressed: () {
                Get.toNamed(Routes.KARISTIRICI);
              }),
        ],
      ),
    );
  }
}
