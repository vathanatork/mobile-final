import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';

import '../models/movie.dart';

final Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  videoUrl: Assets.sintelVideoUrl,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

final List<Content> previews =  [
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
    description: 'Avatar The Last Airbender Description',
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    videoUrl: Assets.sintelVideoUrl,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
  ),
];

final List<Content> myList =  [
  Content(
    name: 'Violet Evergarden',
    imageUrl: Assets.violetEvergarden,
    videoUrl: Assets.sintelVideoUrl,
  ),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Kakegurui', imageUrl: Assets.kakegurui,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Black Mirror', imageUrl: Assets.blackMirror,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Kakegurui', imageUrl: Assets.kakegurui,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Black Mirror', imageUrl: Assets.blackMirror,videoUrl: Assets.sintelVideoUrl,),
];

final List<Content> originals =  [
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The Witcher', imageUrl: Assets.witcher,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy,videoUrl: Assets.sintelVideoUrl,),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The Witcher', imageUrl: Assets.witcher,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy,videoUrl: Assets.sintelVideoUrl,),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw,videoUrl: Assets.sintelVideoUrl,),
];

final  List<Content> trending =  [
  Content(name: 'Explained', imageUrl: Assets.explained,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The Crown', imageUrl: Assets.crown,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Dogs', imageUrl: Assets.dogs,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Explained', imageUrl: Assets.explained,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'The Crown', imageUrl: Assets.crown,videoUrl: Assets.sintelVideoUrl,),
  Content(name: 'Dogs', imageUrl: Assets.dogs,videoUrl: Assets.sintelVideoUrl,),
];

List<Movie> staticMovies = [
  Movie(
    title: 'Movie 1',
    imageUrl: 'https://via.placeholder.com/300x450',
    releaseDate: '2024-01-01',
    overview: 'This is the overview of Movie 1.',
  ),
  Movie(
    title: 'Movie 2',
    imageUrl: 'https://via.placeholder.com/300x450',
    releaseDate: '2024-02-01',
    overview: 'This is the overview of Movie 2.',
  ),
  // Add more movies as needed
];
