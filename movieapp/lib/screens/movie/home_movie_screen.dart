import 'package:flutter/material.dart';
import 'package:movieapp/widgets/movies/categories_list.dart';
import 'package:movieapp/widgets/movies/latest_movies.dart';
import 'package:movieapp/widgets/movies/trending_movies.dart';

import 'package:provider/provider.dart';

class HomeMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // List<int> movieList = [1,2,3,4,5,6];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrendingMovies(),
              CategoriesList(),
              LatestMovies()
            ],
          ),
        ),
      ),
    );
  }
}
