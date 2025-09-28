import 'package:flutter/cupertino.dart';
import 'package:new_app/movie_app/models/movie_model.dart';

class AppBrain {

  final ValueNotifier<List<MovieModel>> movies = ValueNotifier<List<MovieModel>>([]);
}
