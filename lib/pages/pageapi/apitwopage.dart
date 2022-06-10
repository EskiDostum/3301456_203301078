import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobilprogramlamaodev/models/album_model_api.dart';
import 'package:mobilprogramlamaodev/widgets/constants.dart';
import 'package:mobilprogramlamaodev/widgets/drawerbuild.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  Future<List<AlbumModel>> _getAlbumList() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/albums");
      List<AlbumModel> _albumlist = [];
      if (response.statusCode == 200) {
        // response adındaki datamı listemi al ve onu albumModel tarzında bir listeye dönüştür
        _albumlist =
            (response.data as List).map((e) => AlbumModel.fromMap(e)).toList();
        // if iç yapısı
      }
      return _albumlist;
      // try iç yapısı
    }
    /* */
    on DioError catch (e) {
      return Future.error(e.message);
    }
  }

  late final Future<List<AlbumModel>> _albumlist;
  @override
  void initState() {
    super.initState();
    _albumlist = _getAlbumList();
  }

  @override
  Widget build(BuildContext context) {
    _getAlbumList();
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: FutureBuilder<List<AlbumModel>>(
          future: _albumlist,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var albumlist = snapshot.data!;
              return ListView.builder(
                itemBuilder: (context, index) {
                  var album = albumlist[index];
                  return ListTile(
                    leading: Text(album.userId.toString()),
                    subtitle: Text(album.id.toString()),
                    title: Text(album.title),
                  );
                },
                itemCount: albumlist.length,
              );
            } else if (snapshot.hasError) {
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
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      drawer: const DrawerBuildWidget(),
    );
  }
}
