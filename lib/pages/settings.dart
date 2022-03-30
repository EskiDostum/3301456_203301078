import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mobilprogramlamaodev/constants.dart';
import 'package:mobilprogramlamaodev/pages/person_update.dart';
import '../colors.dart';
import '../widgets/butonbuild1.dart';
import '../widgets/drawerbuild.dart';
import 'errorpage.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          butonbuild(
              text: "Kişisel Bilgileri Güncelle",
              onPressed: () {
                Get.to(const PersonUpdate());
              }),
          butonbuild(
              text: "Kart Bilgileri",
              onPressed: () {
                Get.to(const ErrorPage());
              }),
          butonbuild(
              text: "Beğendiklerin",
              onPressed: () {
                Get.to(const ErrorPage());
              }),
          butonbuild(
              text: "Siparişlerin",
              onPressed: () {
                Get.to(const ErrorPage());
              }),
          butonbuild(
              text: "Adres Bilgilerin",
              onPressed: () {
                Get.to(const ErrorPage());
              }),
        ],
      ),
    );
  }
}
