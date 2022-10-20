import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class Profile extends GetxController {
  @factoryMethod
  static init() => Get.put(Profile());
}
