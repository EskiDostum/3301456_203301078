import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/models/%C3%BCr%C3%BCnverileri.dart';
import 'package:mobilprogramlamaodev/models/imagelist.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';
import 'package:mobilprogramlamaodev/widgets/itemviewbuild.dart';

import '../../models/colors.dart';

class Karistiricipage extends StatelessWidget {
  const Karistiricipage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      body: Column(
        children: [
          itemviewcontainer(
              image: productGalleryaKaristirma,
              model: karistiricimodel,
              voltaj: karistiricivoltaj,
              olcu: karistiriciolcu,
              fiyat: karistiricifiyat)
          // itemviewcontainer(
          //     imagea: "assets/karistirma2.jpg",
          //     text1: "Model: KPKM 32 Ø 98",
          //     text2: "Voltaj	400 V",
          //     text3: "Ölçüler (U x G x Y)	780 x 1095 x 1954 mm",
          //     text4: "4500 TL"),
        ],
      ),
    );
  }
}
