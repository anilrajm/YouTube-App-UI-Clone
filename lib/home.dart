import 'package:flutter/material.dart';
 import 'PlayScreen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),home:YouTube() ));
}

class YouTube extends StatefulWidget {
  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Image.asset(
                "assets/[CITYPNG.COM]HD White Youtube YT Horizontal Logo PNG - 3120x1337.png",
                width: 115),
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
            selectedItemColor: Colors.red,
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
              GestureDetector(onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=> Play()));} ,
                child: Stack(
                  children: [
                    Positioned(
                        child: Image.asset(
                      "assets/reqxvF98NSc-HD.jpg",
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
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/download.jfif"),
                ),
                title: Text(
                  "The CardBoard Plane",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "M4Tech - 1M views - 2months ago",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ),

              Stack(
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
            ],
          ),
        );
  }
}
