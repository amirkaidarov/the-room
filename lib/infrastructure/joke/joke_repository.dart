import 'package:flutter_calling_app/domain/joke/i_joke_repository.dart';
import 'package:http/http.dart' as http;

class JokeRepository implements IJokeRepository {
  @override
  Future<String> getDadJoke() async {
    var url = "https://icanhazdadjoke.com/";
    http.Response response =
        (await http.get(Uri.parse(url), headers: {"Accept": "text/plain"}));
    String body = response.body;
    return body;
  }
}
