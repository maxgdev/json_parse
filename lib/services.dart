import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
import './user_model.dart';

class HttpService {
  // async  must return a Future
  static Future<List<User>> getUsers() async {
    final String url = "http://jsonplaceholder.typicode.com/users";
    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<User> users = userFromJson(response.body);
      print(users.length);
      return users;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return List<User>();
    }
  }
}
