import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/routes/apppages.dart';
import 'package:mobilprogramlamaodev/models/imagelist.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';
import 'package:mobilprogramlamaodev/widgets/home_scrollvie_widget.dart';
import '../models/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: appbar,
      drawer: const DrawerBuildWidget(),
      // sayfayı genişletir uzatma mevzusu
      body: SingleChildScrollView(
        // önden arkaya doğru widget tasarımı gerçekleştirir en üste koyduğun ekranın en içinde gözükerek devam eder
        child: Stack(
          children: [
            Column(
              children: [
                // resimlerin yan yana customscrollview widget
                const Center(
                  child: Text(
                    "Kıyma Makineleri",
                    style: TextStyle(fontSize: 20),
                  ),
                ),

                TasarimWidget(
                    liste: productGalleryKiyma,
                    ontap: () {
                      Get.toNamed(Routes.KIYMA);
                    }),
                const Center(
                  child: Text(
                    "Testere Makineleri",
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                TasarimWidget(
                    liste: productGalleryaTestere,
                    ontap: () {
                      Get.toNamed(Routes.TESTERE);
                    }),
                const Center(
                  child: Text(
                    "Karıştırıcılı Kıyma Makinaları",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TasarimWidget(
                    liste: productGalleryaKaristirma,
                    ontap: () {
                      Get.toNamed(Routes.KARISTIRICI);
                    }),
                // iletişim bilgilerinin düzenlendiği widget
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.cyan.shade700, width: 3),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        // widgetları yer ayarlarını yapmaya yarıyor
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("İletişim Bilgileri : "),
                          Text("05315737625"),
                          Text("EskiDostum01@hotmail.com"),
                          Text("Adres: "),
                          Text("Konya/Selçuklu")
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
