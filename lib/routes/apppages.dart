// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/pages/animasyon/animation_one.dart';
import 'package:mobilprogramlamaodev/pages/animasyon/animationtwo.dart';
import 'package:mobilprogramlamaodev/pages/gestures/gestures.dart';
import 'package:mobilprogramlamaodev/pages/graphic/graphicpage.dart';
import 'package:mobilprogramlamaodev/pages/kayitol.dart';
import 'package:mobilprogramlamaodev/pages/pageapi/apipage.dart';
import 'package:mobilprogramlamaodev/pages/pageapi/apitwopage.dart';
import 'package:mobilprogramlamaodev/pages/signinpage.dart';
import 'package:mobilprogramlamaodev/pages/errorpage.dart';
import 'package:mobilprogramlamaodev/pages/homepage.dart';
import 'package:mobilprogramlamaodev/pages/person_update.dart';
import 'package:mobilprogramlamaodev/pages/product/producsettings.dart';
import 'package:mobilprogramlamaodev/pages/product/productkaristiricipage.dart';
import 'package:mobilprogramlamaodev/pages/product/productkiymapage.dart';
import 'package:mobilprogramlamaodev/pages/product/producttesterepage.dart';

import 'package:mobilprogramlamaodev/pages/settings.dart';
import 'package:mobilprogramlamaodev/pages/sqlitepage/sqlitepage.dart';

import '../denemeleriçinfirestore/firestore.dart';

part 'approuters.dart';

class AppPages {
  static const INITIAL = Routes.litedata;
  static final routes = [
    GetPage(name: "/errorpage", page: () => ErrorPage()),
    GetPage(name: "/homepage", page: () => HomePage()),
    GetPage(name: "/SignInpage", page: () => SignInpage()),
    GetPage(name: "/Settings", page: () => Settings()),
    GetPage(name: "/PersonUpdate", page: () => PersonUpdate()),
    GetPage(name: "/ProductSettingPage", page: () => ProductSettingPage()),
    GetPage(name: "/Kiymapage", page: () => Kiymapage()),
    GetPage(name: "/Testerepage", page: () => Testerepage()),
    GetPage(name: "/Karistiricipage", page: () => Karistiricipage()),
    GetPage(name: "/KayitOlPage", page: () => KayitOlPage()),
    GetPage(name: "/GraphicPage", page: () => GraphicPage()),
    GetPage(name: "/UserApi", page: () => UserApi()),
    GetPage(name: "/AlbumPage", page: () => AlbumPage()),
    GetPage(name: "/Animationone", page: () => Animationone()),
    GetPage(name: "/AnimationBuilder", page: () => AnimationBuilder()),
    GetPage(name: "/Firestorecode", page: () => Firestorecode()),
    GetPage(name: "/GesturesPage", page: () => GesturesPage()),
    GetPage(name: "/sqlitedata", page: () => sqlitedata()),
  ];
}
