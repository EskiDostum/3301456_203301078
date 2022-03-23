import 'package:get/get.dart';
import 'package:mobilprogramlamaodev/pages/errorpage.dart';

part 'approuters.dart';

class AppPages {
  static const INITIAL = Routes.ERROR;
  static final routes = [GetPage(name: "/error", page: () => ErrorPage())];
}
