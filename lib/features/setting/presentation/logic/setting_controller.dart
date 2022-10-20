import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class SettingController extends GetxController {
  @factoryMethod
  static init() => Get.put(SettingController());
}
