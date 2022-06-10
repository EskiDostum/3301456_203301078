import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/models/human_model_api.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

class UserApi extends StatefulWidget {
  const UserApi({Key? key}) : super(key: key);

  @override
  State<UserApi> createState() => _UserApiState();
}

class _UserApiState extends State<UserApi> {
  Future<List<UserModelApi>> _getUserList() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/users");
      List<UserModelApi> _userList = [];
      if (response.statusCode == 200) {
        // response adındaki datamı listemi al ve onu usermodelapi tarzında bir listeye dönüştür
        _userList = (response.data as List)
            .map((e) => UserModelApi.fromMap(e))
            .toList();
        // if iç yapısı
      }
      return _userList;
      // try iç yapısı
    }
    /* */
    on DioError catch (e) {
      return Future.error(e.message);
    }
  }

  late final Future<List<UserModelApi>> _userList;
  @override
  void initState() {
    super.initState();
    _userList = _getUserList();
  }

  @override
  Widget build(BuildContext context) {
    _getUserList();
    return Scaffold(
      //   backgroundColor: Colors.amber,
      appBar: appbar,
      body: Center(
        child: FutureBuilder<List<UserModelApi>>(
          future: _userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // data var ise burayı çalıştır
              var userlist = snapshot.data!;
              return ListView.builder(
                  itemBuilder: (context, index) {
                    var user = userlist[index];
                    return ListTile(
                      title: Text(
                        user.email,
                      ),
                      subtitle: Text(user.address.toString()),
                      leading: Text(user.id.toString()),
                    );
                  },
                  itemCount: userlist.length);
            }
            //
            else if (snapshot.hasError) {
              // error var ise burayı
              return Scaffold(
                appBar: appbar,
                drawer: const DrawerBuildWidget(),
                body: Center(
                  child: Column(
                    children: [
                      Text(
                          "hata gerçekleşmiştir Sayfayı yeniden yükleyiniz hata kodu == ${snapshot.error.toString()}"),
                    ],
                  ),
                ),
              );
            }
            //
            else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      drawer: const DrawerBuildWidget(),
    );
  }
}
