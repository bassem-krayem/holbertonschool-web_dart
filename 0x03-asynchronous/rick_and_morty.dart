import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // 1. Define the API endpoint
    var url = Uri.parse('https://rickandmortyapi.com/api/character');

    // 2. Make the GET request
    var response = await http.get(url);

    // 3. Check if the request was successful
    if (response.statusCode == 200) {
      // 4. Decode the body
      var data = json.decode(response.body);
      
      // The API returns an object with a 'results' list
      var characters = data['results'] as List;

      // 5. Loop and print names
      for (var character in characters) {
        print(character['name']);
      }
    }
  } catch (err) {
    // Return the error string as requested
    print('error caught: $err');
  }
}
