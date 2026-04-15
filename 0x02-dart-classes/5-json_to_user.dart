class User {
  int id;
  String name;
  int age;
  double height;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  toJson() {
    return {"name": name, "age": age, "height": height, "id": id};
  }

  toString() {
    return "User: {id: $id, name: $name, age: $age, height: $height}";
  }
}
