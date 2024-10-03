import 'package:advanced_todo_app/configration/routs.dart';
import 'package:get/get.dart';

class SplaceScreenController extends GetxController {
  @override
  void onInit() {
    goFromSplaceScreen();
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> goFromSplaceScreen() async {
    Future.delayed(
     const Duration(seconds: 3),
      () {
        Get.offAllNamed(AppRouts.welcomeScreen);
      },
    );
  }
}
