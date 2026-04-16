import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
  const Duration(seconds: 2),
  () => '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
);

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

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
