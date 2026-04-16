import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();

    Map<String, dynamic> userMap = json.decode(data);

    return 'Hello ${userMap['username']}';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    bool hasUser = await checkCredentials();

    if (hasUser) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
