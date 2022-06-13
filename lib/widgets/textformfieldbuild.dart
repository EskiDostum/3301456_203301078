import 'package:flutter/material.dart';

Widget buildinput({
  required String helpertext,
  String? initialtext,
  required TextEditingController controller,
}) {
  return Scaffold(
    body: Center(
      child: Container(
        padding: const EdgeInsets.all(
            8.0), // sanırım padding container içinde mesafeleri ayarlıyor
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          //çevresinde oluşuan sınır çizgilerini renklendirme aşaması
          border: Border.all(
              color: const Color.fromARGB(255, 199, 85, 85),
              width: 3), // çerçeve rengini belirlemekte
          // çerçevenin yuvarlağa dönmesini sağlıyor
          // borderRadius: const BorderRadius.all( Radius.circular(50), çerçeviyi kenarlarını yuvarlak yapıyordu
        ),
        child: TextFormField(
            controller: controller,
            maxLength: 20,
            initialValue: initialtext,
            decoration: InputDecoration(
              focusColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 20),
              helperText: helpertext,
            )),
      ),
    ),
  );
}
