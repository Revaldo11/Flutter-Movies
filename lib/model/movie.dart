class Movie {
  final int id;
  final double popularity;
  final String title;
  final String backdropPath;
  final String posterPath;
  final String overview;
  final double rating;

  Movie({
    required this.id,
    required this.popularity,
    required this.title,
    required this.backdropPath,
    required this.posterPath,
    required this.overview,
    required this.rating,
  });

  Movie.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        popularity = json['popularity'] ?? 0.0,
        title = json['title'] ?? '',
        backdropPath = json['backdrop_path'] ?? '',
        posterPath = json['poster_path'] ?? '',
        overview = json['overview'] ?? '',
        rating = json['vote_average'].toDouble() ?? 0.0;
}
