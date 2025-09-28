class MovieModel {
  bool? adult;
  String? backdropPath;
  String? title;
  num? voteAverage;
  String? posterPath;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? releaseDate;
  int? id;
  double? popularity;
  String?genre;

  MovieModel({
    this.releaseDate,
    this.genre,
    this.id,
    this.title,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      releaseDate: json['release_date'],
      id: json['id'],
      genre: json['genre'],
      title: json['title'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: (json['popularity'] != null)
          ? json['popularity'].toDouble()
          : null,
      posterPath: json['poster_path'],
      voteAverage: json['vote_average'],
    );
  }


}
