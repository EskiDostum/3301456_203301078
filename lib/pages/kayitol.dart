import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/pages/person_update.dart';
import 'package:mobilprogramlamaodev/widgets/butonbuild1.dart';
import 'package:mobilprogramlamaodev/widgets/textformfieldbuild.dart';

class KayitOlPage extends StatefulWidget {
  const KayitOlPage({Key? key}) : super(key: key);
  static TextEditingController nametext = TextEditingController();
  static TextEditingController passwordtext = TextEditingController();
  @override
  State<KayitOlPage> createState() => _KayitOlPageState();
}

class _KayitOlPageState extends State<KayitOlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Container(
              width: 350.w,
              height: 150.h,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Center(
                  child: Text(
                "Farketmez Makineye Hoş geldiniz ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
          // İnput girişlerinin olduğu textformfield
          SizedBox(
            width: 355.w,
            height: 150.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 300.w,
                  height: 65.h,
                  child: buildinput(
                      helpertext: "İsminiz ", controller: KayitOlPage.nametext),
                ),
                SizedBox(
                  width: 300.w,
                  height: 65.h,
                  child: buildinput(
                      helpertext: "Şifreniz ",
                      controller: KayitOlPage.passwordtext),
                ),
              ],
            ),
          ),
          // buton kısmı
          SizedBox(
            child: Row(
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: butonbuild(
                        text: "Kayıt Olun",
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertDialoga();
                              });
                          setState(() {});
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
