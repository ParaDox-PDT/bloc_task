import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/presentation/music_list/music_list.dart';
import 'package:flutter_defualt_project/presentation/music_player/music_player_screen.dart';


class RouteNames {
  static const String musicList = "/";
  static const String musicPlayer = "/music_player";

}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.musicList:
        return MaterialPageRoute(
          builder: (context) => const MusicList(),
        );
      case RouteNames.musicPlayer:
        return MaterialPageRoute(
          builder: (context) {
            Map<String,dynamic> map=settings.arguments as Map<String,dynamic>;
            return  MusicPlayerScreen(image: map["image"]!, music: map["music"]!, name: map["name"]!, musicName: map["musicName"]!,index: map["index"],);
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route not found!"),
            ),
          ),
        );
    }
  }
}