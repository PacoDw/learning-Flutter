import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/item_model.dart';
import '../models/trailer_model.dart';

class MovieApi {
  Client client = Client();
  final _api_key = DotEnv().env['API_KEY'];
  final _base_url = "http://api.themoviedb.org/3/movie";


  Future<ItemModel> fetchMovieList() async {
    print('Entered');

    final response = await client
        .get('http://api.themoviedb.org/3/movie/popular?api_key=$_api_key');
        
    print(response.body.toString());

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

    Future<TrailerModel> fetchTrailer(int movieId) async {
    final response =
        await client.get("$_base_url/$movieId/videos?api_key=$_api_key");

    if (response.statusCode == 200) {
      return TrailerModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }

}
