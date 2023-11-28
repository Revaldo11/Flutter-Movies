import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/styles/theme.dart' as style;
import 'package:flutter_movie_app/widgets/genre.dart';
import 'package:flutter_movie_app/widgets/now_playing.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: style.Colors.mainColor,
        centerTitle: true,
        leading: const Icon(
          EvaIcons.menu2Outline,
          color: Colors.white,
        ),
        title: const Text("Discover"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                EvaIcons.searchOutline,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: const [
          NowPlaying(),
          GenresScreen(),
        ],
      ),
    );
  }
}
