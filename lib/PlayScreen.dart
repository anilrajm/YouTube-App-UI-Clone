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
              "The CardBoard Plane",
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
                    "assets/hnC4ti3zrvk-HD.jpg",
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
                        "58:45",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/jLiT8Du3Tbo-HD (2).jpg"),
            ),
            title: Text(
              "How to be the happiest person!!",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Lana Blakely - 2M views - 5months ago",
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
                    "assets/EUEZ-QUV8oQ-HD.jpg",
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
                  "assets/images (1).jfif"),
            ),
            title: Text(
              "Serial Killers",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Nissaram! - 45k views - 2 year ago",
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
                    "assets/OM1Y8LBHraY-HD.jpg",
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
                  "assets/bc5d0920db479b509205b5db4b09908e.jpg"),
            ),
            title: Text(
              "Bharati Apartments Part-3",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Karikku - 3M views - 1 week ago",
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
                    "assets/HRLJS1TyHCg-HD.jpg",
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
                  "assets/download.png"),
            ),
            title: Text(
              "Mr.Beans Pizza",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Mr Bean - 1M views - 2months ago",
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
