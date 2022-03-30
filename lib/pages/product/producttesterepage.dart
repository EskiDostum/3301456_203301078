import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/constants.dart';
import 'package:mobilprogramlamaodev/models/%C3%BCr%C3%BCnverileri.dart';
import 'package:mobilprogramlamaodev/models/veriler.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';
import 'package:mobilprogramlamaodev/widgets/itemviewbuild.dart';

import '../../colors.dart';

class Testerepage extends StatelessWidget {
  const Testerepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Column(
        children: [
          itemviewcontainer(
              image: productGalleryaTestere,
              model: testeremodel,
              voltaj: testerevoltaj,
              olcu: testereolcu,
              fiyat: testerefiyat)
          // itemviewcontainer(
          //     imagea: "assets/testere2.jpg",
          //     text1: "Model: TES-500",
          //     text2: "Motor voltaj	230 / 400 / 480 V.",
          //     text3: "Makina ölçüleri (E x B x Y)	1360 x 1020 x 2345 mm.",
          //     text4: "5700 TL"),
        ],
      ),
    );
  }
}
