import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      drawer: drawerbuild(),
      body: SingleChildScrollView(
        // sayfayı genişletir uzatma mevzusu
        child: Stack(), // önden arkaya widget tasa
      ),
    );
  }
}
