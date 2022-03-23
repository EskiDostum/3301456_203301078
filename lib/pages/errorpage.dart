import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/drawerbuild.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: drawerbuild(),
      appBar: AppBar(),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.red,
        child: Text(
          "sayfa tasarlanmamıştır",
          style: TextStyle(fontSize: 50.sp, color: Colors.red),
        ),
      ),
    );
  }
}
