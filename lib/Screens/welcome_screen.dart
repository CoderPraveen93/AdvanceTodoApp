import 'package:advanced_todo_app/Screens/sign_in_screen.dart';
import 'package:advanced_todo_app/Screens/user_list_screen/user_list_screen.dart';
import 'package:advanced_todo_app/configration/routs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.network(
                "https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/c6/36/04/c63604e5-925a-33bd-3d57-1069f8a17460/AppIcon-0-0-1x_U007emarketing-0-10-0-0-sRGB-85-220.png/1200x630wa.png"),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "A Best Notes & Todo App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Your all notes and todo will be 100% safe in our storage, this is a project created by Ni30 and there team",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                // Get.to(const SignInScreen());
                Get.to(const UserListScreen());
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                height: 50,
                width: double.infinity,
                child: const Center(
                    child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: "Don't have an account ?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Perform the action here
                        Get.toNamed(AppRouts.signUpScreen);
                      },
                    text: '  Register',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
