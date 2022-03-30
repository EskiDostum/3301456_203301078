import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/constants.dart';
import 'package:mobilprogramlamaodev/models/%C3%BCr%C3%BCnverileri.dart';
import 'package:mobilprogramlamaodev/models/veriler.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';
import 'package:mobilprogramlamaodev/widgets/itemviewbuild.dart';

import '../../colors.dart';

class Kiymapage extends StatelessWidget {
  const Kiymapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Column(
        children: [
          itemviewcontainer(
              image: productGalleryKiyma,
              model: kiymamodel,
              voltaj: kiymavoltaj,
              olcu: kiymaolcu,
              fiyat: kiymafiyat)
          // itemviewcontainer(
          //     imagea: "assets/kiyma2.jpg",
          //     text1: "Model: PKM-32",
          //     text2: "Voltaj	400 V / 50 Hz.",
          //     text3: "Ölçüler (U x G x Y)	320 x 820 x 420 mm.",
          //     text4: "5700 TL"),
          // itemviewcontainer(
          //     imagea: "assets/kiyma3.jpg",
          //     text1: "Model: PKM-32S-SA",
          //     text2: "Voltaj	400 V / 50 Hz.",
          //     text3: "Ölçüler (U x G x Y)	320 x 1030 x 420 mm.",
          //     text4: "8790 TL"),
        ],
      ),
    );
  }
}
