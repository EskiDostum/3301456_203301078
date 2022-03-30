import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobilprogramlamaodev/constants.dart';
import '../widgets/drawerbuild.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const DrawerBuildWidget(),
      appBar: appbar,
      body: Center(
        child: SizedBox(
          height: 100.h,
          width: 200.w,
          child: Text(
            "sayfa tasarlanmamıştır",
            style: TextStyle(fontSize: 25.sp, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
