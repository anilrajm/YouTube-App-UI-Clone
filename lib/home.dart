import 'package:flutter/material.dart';
import 'package:youtube_ui/Body.dart';

void main() {
  runApp(YouTube());
}

class YouTube extends StatefulWidget {
  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.grey,
            appBarTheme: AppBarTheme(backgroundColor: Colors.black54)),
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Image.asset(
              "assets/[CITYPNG.COM]HD White Youtube YT Horizontal Logo PNG - 3120x1337.png",
              height: 50,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cast,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/beautiful-woman-wearing-sunglasses-avatar-character-icon-free-vector.jpg"),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.black54,
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.assistant_navigation,
                  ),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline_sharp), label: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.subscriptions), label: 'Subscribe'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library_sharp), label: 'Library')
            ],
            backgroundColor: Colors.lime,
          ),
          body: ListView(
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Image.asset(
                    "assets/images.jfif",
                    fit: BoxFit.cover,
                    width: 400,
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
