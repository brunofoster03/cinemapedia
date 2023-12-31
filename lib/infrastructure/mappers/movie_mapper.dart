import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/movie_moviedb.dart';

class MovieMapper{

  static Movie movieDbToEntity(MovieMovieDb moviedb) => Movie(
    backdropPath: moviedb.backdropPath != '' ?
    'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
    : 'https://ih1.redbubble.net/image.1893341687.8294/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg', 
    adult: moviedb.adult, 
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(), 
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage, 
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: moviedb.posterPath != '' ?
    'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
    : 'https://www.lyricsmotion.com/Content/images/vandana-1975-200x275.jpg', 
    releaseDate: moviedb.releaseDate != null ? moviedb.releaseDate! : DateTime.now(), 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount);

  
  static Movie movieDetailsToEntity(MovieDetails movie) => Movie(
    backdropPath: movie.backdropPath != '' ?
    'https://image.tmdb.org/t/p/w500${movie.backdropPath}'
    : 'https://ih1.redbubble.net/image.1893341687.8294/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg', 
    adult: movie.adult, 
    genreIds: movie.genres.map((e) => e.name).toList(), 
    id: movie.id, 
    originalLanguage: movie.originalLanguage, 
    originalTitle: movie.originalTitle, 
    overview: movie.overview, 
    popularity: movie.popularity, 
    posterPath: movie.posterPath != '' ?
    'https://image.tmdb.org/t/p/w500${movie.posterPath}'
    : 'https://ih1.redbubble.net/image.1893341687.8294/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg', 
    releaseDate: movie.releaseDate, 
    title: movie.title, 
    video: movie.video, 
    voteAverage: movie.voteAverage, 
    voteCount: movie.voteCount);
}