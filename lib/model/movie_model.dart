//here we will write the movie data model class

class MovieModel {
  //ignore: non_constant_identifier_names
  String? movie_title;
  //ignore: non_constant_identifier_names
  int? movie_release_year;
  // ignore: non_constant_identifier_names
  String? movie_poster_url;
  double? rating;

  MovieModel(
    this.movie_title,
    this.movie_release_year,
    this.rating,
    this.movie_poster_url,
  );
}
