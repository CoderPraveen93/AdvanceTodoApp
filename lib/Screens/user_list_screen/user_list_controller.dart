import 'dart:convert';

import 'package:advanced_todo_app/Screens/user_list_screen/user_list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserListController extends GetxController {
  RxList<Datum> userList = <Datum>[].obs;

  Future<RxList<Datum>> userData() async {
    try {
      final response =
          await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var user = data["data"];
        // print(user);
        for (Map<String, dynamic> elemet in user) {
          userList.add(Datum.fromJson(elemet));
        }
        print(userList);
        return userList;
      } else {
        return userList;
      }
    } catch (e) {
      print(e);
    }
    return userList;
  }
}
