import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

class AnimationBuilder extends StatefulWidget {
  const AnimationBuilder({Key? key}) : super(key: key);

  @override
  State<AnimationBuilder> createState() => _AnimationBuilderState();
}

class _AnimationBuilderState extends State<AnimationBuilder>
    with SingleTickerProviderStateMixin {
  // late AnimationController controller;
  // late SequenceAnimation sequenceAnimation;

  // //
  // @override
  // void initState() {
  //   super.initState();
  //   controller = AnimationController(vsync: this);
  //   sequenceAnimation = SequenceAnimationBuilder()
  //       .addAnimatable(
  //           animatable: Tween<double>(begin: 0, end: 300),
  //           from: const Duration(seconds: 0),
  //           to: const Duration(seconds: 3),
  //           tag: "widthheight")
  //       .animate(controller);
  //   controller.forward();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Center(
        child:
            // AnimatedBuilder(
            //   animation: controller,
            //   builder: (BuildContext context, widget) {
            //     return
            Container(
          // height: sequenceAnimation["widthheight"].value,
          // width: sequenceAnimation["widthheight"].value,
          child: const Text("selam bekbek"),
          //   );
          //},
        ),
      ),
    );
  }
}
// güncelleme gerekecen yardım al 