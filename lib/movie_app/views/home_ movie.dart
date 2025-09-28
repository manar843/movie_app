import 'package:flutter/material.dart';
import 'package:new_app/main.dart';
import 'package:new_app/movie_app/providar/app_theme_providar.dart';
import 'package:new_app/movie_app/widget/movie_item.dart';
import 'package:new_app/utils/app_style.dart';
import 'package:provider/provider.dart';

import '../models/movie_model.dart';
import '../services/api.dart';
import 'movie_detailes.dart';

class HomeMovie extends StatefulWidget {
  static const String routeName = 'home_movie';

  @override
  State<HomeMovie> createState() => _HomeMovieState();
}

class _HomeMovieState extends State<HomeMovie> {
@override
  void initState() {
    super.initState();
  ApiServices.fetcMovies();
  }
  @override
  Widget build(BuildContext context) {
  var themeProvider=Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
       //  backgroundColor: Colors.transparent,
        title: Text('popular movies',
            //style: AppStyles.bold20white
        ),
        actions: [
          Icon(Icons.favorite, color: Colors.red),
          SizedBox(width: 22),
      IconButton(onPressed:  ()
      {
            if(themeProvider.themeMode==ThemeMode.dark){
              themeProvider.changeTheme(ThemeMode.light);}
              else{
              themeProvider.changeTheme(ThemeMode.dark);
            }


      }, icon: Icon(themeProvider.themeMode==ThemeMode.dark
          ?Icons.nightlight_round
          :Icons.sunny,

      ),


    ),

        ],
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: ValueListenableBuilder<List<MovieModel>>(
              valueListenable: appBrain.movies,
              builder: (  context, value ,  child) {
                return ListView.builder(
                  itemCount: appBrain.movies.value.length,
                  itemBuilder: (context, index) {

                    return InkWell(
                      onTap:  (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                    builder: (_) =>   MovieDetailsScreen(movie: appBrain.movies.value[index] ,)
                          ),
                        );
                      },
                      child: MovieItem(
                      
                        movieModel: appBrain.movies.value[index],
                      ),
                    );
                  },
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
