import 'package:advanced_todo_app/Screens/user_list_screen/user_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserListController userListController = Get.put(UserListController());
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () async {
            userListController.userData();
            // print( userListController.userList.toString());
            userListController.userList.clear();
          },
          child: const Text(
            "User List",
            style: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
            );
          }),
    );
  }
}
