import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasarimWidget extends StatelessWidget {
  const TasarimWidget({
    Key? key,
    required this.liste,
    required this.ontap,
  }) : super(key: key);
  final List liste;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: 360.w,

      // Customscrollview   istediğin şekilde kayan bir liste oluşturmanı sağlıyor
      //scrolldirection ise ekseni belirliyor  horizontal=yatay
      //ama onların kendi içinde kullandıkları liste biraz farklı araştırmam lazım
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: liste.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 150.w,
              height: 150.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: liste[index], fit: BoxFit.cover),
                border: Border.all(width: 1.w, color: Colors.black),
              ),
              child: InkWell(
                onTap: () {
                  // paremetreden gelen ontap
                  ontap();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}






/*
 
 direk child in altına yapıştır 
 
SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // widget tasarımındaki widget ın sağa sola gittiğini göstermek için kullanılmıştır
      physics: const AlwaysScrollableScrollPhysics(),
      child: Row(
        children: [
          for (var item in liste)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 150.w,
                height: 150.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: item, fit: BoxFit.cover),
                    border: Border.all(width: 1, color: Colors.black)),
              ),
            ),
        ],
      ),
    ),

    */