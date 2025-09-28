import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/main.dart';
import 'package:new_app/movie_app/models/movie_model.dart';

class ApiServices{
 static void fetcMovies()async{
    final String endPoint=
   'https://api.themoviedb.org/3/movie/popular' ;

    final String apiKey='eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0ZDVmZWQ2MWU1MzgzOWU2MDY2ZDZlMjY2MWYzNmY0ZSIsIm5iZiI6MTcyODkzNzQwMi4xNTkwMDAyLCJzdWIiOiI2NzBkN2RiYTlmMzUzMWU2YjI2YzFhODUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.C6_Tu-WhsulYBvjx7lMzBE74AbNSoerdKLOXeHQAYxU';
    Map<String,String>headers={'Authorization': 'Bearer $apiKey' };

    var url =Uri.parse(endPoint);
    final response=await http.get(url,
      headers: headers
    );
    print(response.body);
    print(response.statusCode);
    if(response.statusCode==200) {
      final mapResponse = (jsonDecode(response.body));
      print(mapResponse.runtimeType);
      final results = mapResponse['results'] as List;
      print(results);
      final models = results.map((map) => MovieModel.fromJson(map)).toList();
          appBrain.movies.value=models;
    }
}
}