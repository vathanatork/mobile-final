// data/static_movies.dart
class Movie {
  final String title;
  final String imageUrl;
  final String releaseDate;
  final String overview;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.releaseDate,
    required this.overview,
  });
}

List<Movie> staticMovies = [
  Movie(
    title: 'Movie 1',
    imageUrl: 'assets/images/witcher.jpg',
    releaseDate: '2024-01-01',
    overview: 'This is the overview of Movie 1.',
  ),
  Movie(
    title: 'Movie 2',
    imageUrl: 'assets/images/tiger_king.jpg',
    releaseDate: '2024-02-01',
    overview: 'This is the overview of Movie 2.',
  ),
  Movie(
    title: 'Movie 3',
    imageUrl: 'assets/images/teotfw.jpg',
    releaseDate: '2024-03-01',
    overview: 'This is the overview of Movie 3.',
  ),
  Movie(
    title: 'Movie 1',
    imageUrl: 'assets/images/witcher.jpg',
    releaseDate: '2024-01-01',
    overview: 'This is the overview of Movie 1.',
  ),
  Movie(
    title: 'Movie 2',
    imageUrl: 'assets/images/witcher.jpg',
    releaseDate: '2024-02-01',
    overview: 'This is the overview of Movie 2.',
  ),
  Movie(
    title: 'Movie 3',
    imageUrl: 'assets/images/witcher.jpg',
    releaseDate: '2024-03-01',
    overview: 'This is the overview of Movie 3.',
  ),
];
