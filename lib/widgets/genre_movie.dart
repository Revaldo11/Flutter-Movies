import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/model/movie.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_movie_app/styles/theme.dart' as style;

class MovieGenre extends StatefulWidget {
  final List<Movie> movies;
  MovieGenre({Key? key, required this.movies}) : super(key: key);
  @override
  _MovieGenreState createState() => _MovieGenreState(movies);
}

class _MovieGenreState extends State<MovieGenre> {
  final List<Movie> movies;
  _MovieGenreState(this.movies);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 280.0,
      padding: const EdgeInsets.only(left: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  movies[index].posterPath == null
                      ? Hero(
                          tag: movies[index].id,
                          child: Container(
                            width: 120.0,
                            height: 180.0,
                            decoration: const BoxDecoration(
                              color: style.Colors.secondColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0)),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  EvaIcons.filmOutline,
                                  color: Colors.white,
                                  size: 60.0,
                                )
                              ],
                            ),
                          ),
                        )
                      : Hero(
                          tag: movies[index].id,
                          child: Container(
                              width: 120.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(2.0)),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://image.tmdb.org/t/p/w200/${movies[index].posterPath}")),
                              )),
                        ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 100,
                    child: Text(
                      movies[index].title,
                      maxLines: 2,
                      style: const TextStyle(
                          height: 1.4,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        movies[index].rating.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      RatingBar(
                        ratingWidget: RatingWidget(
                          empty: const Icon(
                            EvaIcons.star,
                            color: style.Colors.secondColor,
                          ),
                          full: const Icon(
                            EvaIcons.star,
                            color: style.Colors.secondColor,
                          ),
                          half: const Icon(
                            EvaIcons.star,
                            color: style.Colors.secondColor,
                          ),
                        ),
                        itemSize: 8.0,
                        initialRating: movies[index].rating / 2,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 2.0),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
