// screens/new_and_hot_screen.dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../models/movie.dart';
import '../widgets/new_and_hot_header_delegate.dart';
import '../widgets/new_and_hot_tile.dart';

class NewAndHotScreen extends StatefulWidget {
  const NewAndHotScreen({super.key});

  @override
  State<NewAndHotScreen> createState() => _NewAndHotScreenState();
}

class _NewAndHotScreenState extends State<NewAndHotScreen>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController = ScrollController()
    ..addListener(() {
      if (_scrollController.position.userScrollDirection !=
          ScrollDirection.idle) {
        int newIndex = max(0, min(_scrollController.offset ~/ 3000, 2));
        if (_tabController.index != newIndex) {
          _tabController.animateTo(newIndex);
        }
      }
    });

  late final TabController _tabController =
      TabController(length: 3, vsync: this)
        ..addListener(() {
          if (_tabController.indexIsChanging &&
              _scrollController.position.userScrollDirection ==
                  ScrollDirection.idle) {
            var offset = _scrollController.offset,
                minRange = offset - 300,
                maxRange = offset + 300,
                offsetTo = _tabController.index * 3000.0;

            if (!(minRange <= offsetTo && maxRange >= offsetTo)) {
              _scrollController.animateTo(_tabController.index * 3000.0,
                  curve: Curves.linear,
                  duration: const Duration(milliseconds: 1000));
            }
          }
        });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // Wrap with SafeArea to prevent UI elements from being hidden by the notch or status bar
      child: MediaQuery.removePadding(
        context: context,
        removeTop:
            true, // Optionally keep or remove, depending on desired padding with SafeArea
        removeBottom:
            true, // Optionally keep or remove, depending on desired padding with SafeArea
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPersistentHeader(
                delegate:
                    NewAndHotHeaderDelegate(tabController: _tabController),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => NewAndHotTile(
                    movie: staticMovies[index],
                  ),
                  childCount: staticMovies.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
