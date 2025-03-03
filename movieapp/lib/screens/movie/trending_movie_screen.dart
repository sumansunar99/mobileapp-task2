import 'package:flutter/material.dart';
import 'package:movieapp/providers/movie_provider.dart';
import 'package:movieapp/widgets/movies/movie_tile.dart';

import 'package:provider/provider.dart';

import '../../models/movie_model.dart';

class TrendingMovieScreen extends StatefulWidget {
  @override
  State<TrendingMovieScreen> createState() => _TrendingMovieScreenState();
}

class _TrendingMovieScreenState extends State<TrendingMovieScreen> {

  @override
  void initState(){
    print('prints at first');
    Provider.of<MovieProvider>(context, listen: false).loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;

    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieTile(movie: movieList[index]);
          }),
    );
  }
}
