import 'package:flutter/material.dart';
import 'package:new_app/movie_app/models/movie_model.dart';
import '../../utils/app_style.dart';

class MovieItem extends StatelessWidget {

final MovieModel movieModel;
  MovieItem({
    required this.movieModel,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://image.tmdb.org/t/p/w500${movieModel.posterPath ?? ''}",

              height: 200,
              width: 140,
            ),

            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movieModel.title??'no title',
                    //  style: AppStyles.bold20white
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text(
                        movieModel.voteAverage?.toString() ?? "0.0",
                       // style: AppStyles.med16White,
                      )
                      ,
                    ],
                  ),

                  Text(movieModel.originalLanguage??'' ,
                  //    style: AppStyles.med16White
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined,
                        //  color: Colors.white
                      ),
                      SizedBox(width: 6),
                      Text(movieModel.releaseDate??'',
                       //   style: AppStyles.med16White
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border
                          ,// color: Colors.white
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey),
      ],
    );
  }
}
