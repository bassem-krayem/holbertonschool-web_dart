import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String _user_password; // Internal storage

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : _user_password = user_password,
       super(password: user_password); // Pass it to the parent class

  // Getter and Setter for user_password that syncs with the parent Password class
  String get user_password => _user_password;
  set user_password(String value) {
    _user_password = value;
    password = value; // Update the parent's _password field
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? "",
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "age": age, "height": height};
  }

  @override
  String toString() {
    // Note: We call isValid() here as requested
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
