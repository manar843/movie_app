
import 'package:flutter/material.dart';
import 'package:new_app/movie_app/models/movie_model.dart';
import 'package:new_app/utils/app_style.dart';

class MovieDetailsScreen extends StatelessWidget {
  final MovieModel movie;

  const MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // iconTheme: IconThemeData(color: Colors.white),
          title: Text(movie.title ?? "No title" )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Stack(
         children: [
           Image.network("https://image.tmdb.org/t/p/w500${movie.posterPath}"),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               SizedBox(height: 508),
               Container(
                 padding: EdgeInsets.all(22),
                 decoration: BoxDecoration(
                  // color: Colors.black,
                   color: Theme.of(context).cardColor,
                   borderRadius: BorderRadius.circular(66),
                 ),
                 child: Column(
                   children: [
                     Text(
                       movie.title ?? "",
                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                     ),
                     SizedBox(height: 8),
                     Row(
                       children: [
                         Icon(Icons.star,color: Colors.amber,),
                         Text(
                           "  ${movie.voteAverage?.toStringAsFixed(1) ?? ' '}",
                           style: TextStyle(fontSize: 16, color: Colors.amber),
                         ),
                       ],
                     ),
                     SizedBox(height: 8),
                     Text(
                       movie.overview ?? "No description",
                       style: TextStyle(fontSize: 16),
                     ),
                   ],
                 ),
               )

             ],
           ),
         ],

        ),
      ),
    );
  }
}
