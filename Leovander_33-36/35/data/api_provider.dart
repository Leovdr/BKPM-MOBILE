import 'dart:convert';
import 'package:http/http.dart' show Client, Response;
import '/model/popular_movies.dart';

class ApiProvider {
  String apikey = '7420decb28098aafa780194b38c2ada7';
  String baseUrl = 'https://api.themoviedb.org/3/';

  Client client = Client();

  Future<PopularMovies> getPopularMovies() async {
    // String url = '$baseUrl/movie/popular?api_key=$apikey';
    // print(url);
    Response response =
        await client.get(Uri.parse('$baseUrl/movie/popular?api_key=$apikey'));

    if (response.statusCode == 200) {
      return PopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}