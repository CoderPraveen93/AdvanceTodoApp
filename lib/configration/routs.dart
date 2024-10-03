import 'package:advanced_todo_app/Screens/sign_up_screen.dart';
import 'package:advanced_todo_app/Screens/splace_screen.dart';
import 'package:advanced_todo_app/Screens/welcome_screen.dart';
import 'package:get/get.dart';

class AppRouts {
  static String initialPage = "/";
  static String welcomeScreen = "/welcomeScreen";
  static String signUpScreen = "/signUpScreen";
  static List<GetPage> allpage = [
    GetPage(name: initialPage, page: () => const SplaceScreen()),
    GetPage(name: welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    
  ];

}
