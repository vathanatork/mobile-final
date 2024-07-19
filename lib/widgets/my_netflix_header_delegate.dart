import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'netflix_tab.dart';
import 'profile_icon.dart';

class MyNetflixHeader extends StatelessWidget {
  final TabController tabController;

  const MyNetflixHeader({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    'My Netflix',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.cast),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.search),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/profile');
                    },
                    icon: const Icon(LucideIcons.alignCenter,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    Column(
                      children: [
                        const ProfileIcon(color: Colors.blue, iconSize: 70.0),
                        const SizedBox(height: 8.0),
                        Text(
                          'Vathana',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const ProfileIcon(
                          color: Colors.blue,
                          iconSize: 40.0,
                          icon: Icon(
                            LucideIcons.download,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Downloads', // Replace with dynamic profile name
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.arrowRight),
                          color: const Color.fromARGB(123, 255, 255, 255),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
