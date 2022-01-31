import 'dart:convert';
import 'package:insaf_multiparpas/models/user.dart';
import 'package:http/http.dart';

class ApiServices {
  final String userUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<User>> getUserList() async {
    Response getData = await get(Uri.parse(userUrl));
    if (getData.statusCode == 200) {
      List<dynamic> userList = jsonDecode(getData.body);

      List<User> users =
          userList.map((dynamic user) => User.fromJson(user)).toList();
      return users;
    } else {
      print('api user data error');
      throw 'User list error';
    }
  }
}
