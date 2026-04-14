void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String firstName = nameParts[0];
    String lastName = nameParts[1];
    return 'Hello Agent ${lastName.substring(0, 1)}.${firstName} your id is ${id}';
  }

  print(inner());
}
