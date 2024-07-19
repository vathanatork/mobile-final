import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_responsive_ui/cubits/cubits.dart';
import 'package:flutter_netflix_responsive_ui/screens/my_netflix_screen.dart';
import 'package:flutter_netflix_responsive_ui/screens/screens.dart';
import 'package:flutter_netflix_responsive_ui/widgets/profile_icon.dart';
import 'package:flutter_netflix_responsive_ui/widgets/widgets.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'new_and_hot_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(key: PageStorageKey('homeScreen')),
    const NewAndHotScreen(),
    const DeveloperScreen(),
    const MyNetflixScreen(),
  ];

  final List<Map<String, dynamic>> _navItems = [
    {'label': 'Home', 'icon': Icons.home},
    {
      'label': 'New & Hots',
      'icon': Icons.live_tv
    }, // Replaced with a Material icon

    {'label': 'Developers', 'icon': Icons.person},
    {'label': 'My Netflix', 'icon': Icons.person},
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AppBarCubit>(
        create: (_) => AppBarCubit(),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: !Responsive.isDesktop(context)
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              items: _navItems
                  .map((navItem) => BottomNavigationBarItem(
                        icon: navItem['label'] == 'My Netflix'
                            ? const ProfileIcon(
                                color: Colors.blue, iconSize: 30.0)
                            : Icon(navItem['icon'], size: 30.0),
                        label: navItem['label'],
                      ))
                  .toList(),
              currentIndex: _currentIndex,
              selectedItemColor: Colors.white,
              selectedFontSize: 11.0,
              unselectedItemColor: Colors.grey,
              unselectedFontSize: 11.0,
              onTap: (index) => setState(() => _currentIndex = index),
            )
          : null,
    );
  }
}
