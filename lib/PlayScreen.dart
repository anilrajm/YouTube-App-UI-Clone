import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Play extends StatefulWidget {
  final String title = "Video Demo";

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
//_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller?.initialize();
    _controller?.setLooping(true);
    _controller?.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: ListView(children: [
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Stack(children: [
                  Positioned(
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: _controller!.value.aspectRatio,
                        child: VideoPlayer(_controller!),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 90,
                      left: 160,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (_controller!.value.isPlaying) {
                                _controller!.pause();
                              } else {
                                _controller!.play();
                              }
                            });
                          },
                          icon: Icon(
                            Icons.play_arrow,
                            size: 50,
                          )))
                ]);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/download.jfif"),
            ),
            title: Text(
              "The Paper Butterfy",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "M4Tech - 1M views - 2months ago",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Icon(Icons.thumb_up_alt_outlined), Text("20")],
              ),
              Column(
                children: [Icon(Icons.thumb_up_alt_outlined), Text("200")],
              ),   Column(
                children: [Icon(Icons.ios_share), Text("Share")],
              ),   Column(
                children: [Icon(Icons.download), Text("Download")],
              ),   Column(
                children: [Icon(Icons.library_add), Text("Save")],
              ),],
          )
        , ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/download.jfif"),
            ),
            title: Text(
              "M4Tech",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "9M Subscibers",
              style: TextStyle(color: Colors.white),
            ),trailing: Text("SUBSCIBE",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 17),),
          ),Stack(
            children: [
              Positioned(
                  child: Image.asset(
                    "assets/JsH1CEIMuYo-HD.jpg",
                    fit: BoxFit.cover,
                    width: 400,
                  )),
              Positioned(
                  top: 180,
                  left: 330,
                  child: Container(
                    height: 25,
                    width: 45,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "1:45",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/Saregama_logo.png"),
            ),
            title: Text(
              "Kappa Teaser",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Saregama - 2M views - 1 hour ago",
              style: TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          )
          ,
          Stack(
            children: [
              Positioned(
                  child: Image.asset(
                    "assets/NvtMt_DtFrQ-HD.jpg",
                    fit: BoxFit.cover,
                    width: 400,
                  )),
              Positioned(
                  top: 180,
                  left: 330,
                  child: Container(
                    height: 25,
                    width: 45,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "36:25",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/c823e53b3a1a7b0d36a9.png"),
            ),
            title: Text(
              " Semantics widget of the week",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Flutter - 45k views - 2 year ago",
              style: TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          )
          ,
          Stack(
            children: [
              Positioned(
                  child: Image.asset(
                    "assets/L_bYqD-Ituo-HD.jpg",
                    fit: BoxFit.cover,
                    width: 400,
                  )),
              Positioned(
                  top: 180,
                  left: 330,
                  child: Container(
                    height: 25,
                    width: 45,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "45:45",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/download (2).jfif"),
            ),
            title: Text(
              "Manali Day - Two",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Yazin Muhammed - 3M views - 1 week ago",
              style: TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          )
          ,
          Stack(
            children: [
              Positioned(
                  child: Image.asset(
                    "assets/sszRZDI6kH8-HD.jpg",
                    fit: BoxFit.cover,
                    width: 400,
                  )),
              Positioned(
                  top: 180,
                  left: 330,
                  child: Container(
                    height: 25,
                    width: 45,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "20:45",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/download (2).jfif"),
            ),
            title: Text(
              "The Great Himalayas",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "The Road Tripper - 1.5M views - 7months ago",
              style: TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
