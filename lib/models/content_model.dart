import 'package:flutter/material.dart';


class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl; 
  final Uri videoUrl;      
  final String description;   
  final Color color; 
         

  const Content({
      required this.name,
      required this.imageUrl,
      this.titleImageUrl = '',
      required this.videoUrl, // Accept null values,
      this.description = '',
      this.color = Colors.black,  // Or any other default color
  });

}
