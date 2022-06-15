import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

class Animationone extends StatefulWidget {
  const Animationone({Key? key}) : super(key: key);

  @override
  State<Animationone> createState() => _AnimationoneState();
}

class _AnimationoneState extends State<Animationone>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
        lowerBound: 20,
        upperBound: 28);

    controller.addListener(() {
      setState(() {});
    });
    animation =
        ColorTween(begin: Colors.red, end: Colors.yellow).animate(controller);

    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Animasyon widget için Butona tıklayınız",
            //   style: TextStyle(fontSize: controller.value),
            // ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red.withOpacity(controller.value / 28)),
                onPressed: () {
                  Get.toNamed(Routes.UserApi);
                },
                child: Text(
                  "1.ci Api sayfasına Geçiş yapınız",
                  style: TextStyle(fontSize: controller.value),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary:
                        Colors.blueGrey.withOpacity(controller.value / 28)),
                onPressed: () {
                  Get.toNamed(Routes.Albumapi);
                },
                child: Text(
                  "2.ci Api sayfasına Geçiş yapınız",
                  style: TextStyle(fontSize: controller.value),
                )),
            Container(
              color: animation.value,
              height: 100.h,
              width: 100.w,
              child: InkWell(
                child: const Center(
                  child: Text(
                    "Grafik sayfası ",
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  ),
                ),
                onTap: () {
                  Get.toNamed(Routes.Graphic);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
