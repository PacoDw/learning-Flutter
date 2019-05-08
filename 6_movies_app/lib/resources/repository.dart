import 'dart:async';
import 'movie_api.dart';
import '../models/item_model.dart';
import '../models/trailer_model.dart';

class Repository {
  final movieApi = new MovieApi();

  Future<ItemModel> fetchAllMovies() => movieApi.fetchMovieList(); 

  Future<TrailerModel> fetchTrailers(int movieId) => movieApi.fetchTrailer(movieId);
}