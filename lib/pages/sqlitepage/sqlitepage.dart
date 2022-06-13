import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/models/sqlite/sq_helper.dart';
import 'package:mobilprogramlamaodev/models/sqlite/sq_helper_modul.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

// ignore: camel_case_types
class sqlitedata extends StatelessWidget {
  const sqlitedata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = DataBaseHandler().retrieveReports();
    return Scaffold(
        appBar: appbar,
        drawer: const DrawerBuildWidget(),
        body: Container(
          child: FutureBuilder(
              future: user,
              builder: (context, AsyncSnapshot<List<Report>> snap) {
                if (snap.hasData) {
                  return ListView.builder(
                      itemCount: snap.data?.length,
                      itemBuilder: (context, index) {
                        return Text(
                            "Mail adresiniz  ${snap.data![index].email} şifreniz ${snap.data![index].password} ");
                      });
                } else {
                  return Container();
                }
              }),
        ));
  }
}
