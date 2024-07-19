import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  // color: Colors.blue[800],
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: const Text(
                  'About Our Developers',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const ProfileCard(
              name: 'Tork Chanudomvathana',
              description:
                  'Hi, I am a fullstack web and mobile app\ndeveloper. I am a student at CADT.',
              imageUrl: Assets.vathana,
            ),
            const SizedBox(height: 20),
            const ProfileCard(
              name: 'Cheang Thornsopanha',
              description:
                  'Hi, I am a fullstack web and mobile app\ndeveloper. I am a student at CADT.',
              imageUrl: Assets.cheangThornsopanha,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const ProfileCard(
      {required this.name, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
