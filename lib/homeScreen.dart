import 'package:corewave/AlbumScreen.dart';
import 'package:corewave/consts/imgConst.dart';
import 'package:corewave/player_screen.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: size.height,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/Component.png'))),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/profile.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome back !',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Sanjana',
                                    style: TextStyle(color: Colors.white38),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(Icons.notifications,
                                color: Colors.white),
                            const SizedBox(
                              width: 12,
                            ),
                            const Icon(Icons.settings, color: Colors.white),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset('assets/bar.png')
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Followed Artist',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('See all',
                            style: TextStyle(color: Colors.redAccent))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumScreen()));
                          },
                          child: Artists()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Played',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('See all',
                            style: TextStyle(color: Colors.redAccent))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumScreen()));
                          },
                          child: RecentPlayed()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Release',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('See all',
                            style: TextStyle(color: Colors.redAccent))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumScreen()));
                          },
                          child: NewRelease()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Suggest Artist',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('See all',
                            style: TextStyle(color: Colors.redAccent))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumScreen()));
                          },
                          child: SuggestArtist()),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mood',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('See all',
                            style: TextStyle(color: Colors.redAccent))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumScreen()));
                          },
                          child: Mood()),
                    ),
                    Image.asset(promCard),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Release',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('See all',
                            style: TextStyle(color: Colors.redAccent))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlbumScreen()));
                          },
                          child: TopMix()),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  useRootNavigator: true,
                  isScrollControlled: true,
                  elevation: 100,
                  backgroundColor: Colors.black38,
                  context: context,
                  builder: (context) {
                    return const PlayerScreen();
                  });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 51, 38, 38),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              release1,
                              scale: 6,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Meltdown Mendy',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('Niall Horan',
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget Artists() {
    List CatImages = [artist2, artist2, artist2, artist2, artist2, artist2];
    List CatName = ["Pritam", "Pritam", "Pritam", "Pritam", "Pritam", "Pritam"];
    return Container(
      height: 100,
      color:
          Colors.transparent, // Set the desired height for your horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CatImages.length,
        itemBuilder: (BuildContext context, int index) {
          // You can customize the CircleAvatar here
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  CatImages[index],
                  scale: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget RecentPlayed() {
    List CatImages = [
      recentply1,
      recentply1,
      recentply1,
      recentply1,
      recentply1,
    ];
    List CatName = ["Pritam", "Pritam", "Pritam", "Pritam", "Pritam", "Pritam"];
    return Container(
      height: 150,
      color:
          Colors.transparent, // Set the desired height for your horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CatImages.length,
        itemBuilder: (BuildContext context, int index) {
          // You can customize the CircleAvatar here
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  CatImages[index],
                  scale: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget NewRelease() {
    List CatImages = [
      release1,
      release1,
      release1,
      release1,
      release1,
    ];
    List CatName = ["Pritam", "Pritam", "Pritam", "Pritam", "Pritam", "Pritam"];
    return Container(
      height: 150,
      color:
          Colors.transparent, // Set the desired height for your horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CatImages.length,
        itemBuilder: (BuildContext context, int index) {
          // You can customize the CircleAvatar here
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  CatImages[index],
                  scale: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget SuggestArtist() {
    List CatImages = [
      Suggest1,
      Suggest1,
      Suggest1,
      Suggest1,
      Suggest1,
    ];
    List CatName = ["Pritam", "Pritam", "Pritam", "Pritam", "Pritam", "Pritam"];
    return Container(
      width: double.infinity,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CatImages.length,
        itemBuilder: (BuildContext context, int index) {
          // You can customize the CircleAvatar here
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  CatImages[index],
                  scale: 2.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget Mood() {
    List CatImages = [
      mood1,
      mood1,
      mood1,
      mood1,
      mood1,
    ];
    List CatName = ["Pritam", "Pritam", "Pritam", "Pritam", "Pritam", "Pritam"];
    return Container(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CatImages.length,
        itemBuilder: (BuildContext context, int index) {
          // You can customize the CircleAvatar here
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  CatImages[index],
                  scale: 2.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget TopMix() {
    List CatImages = [
      topmix1,
      topmix1,
      topmix1,
      topmix1,
      topmix1,
    ];
    List CatName = ["Pritam", "Pritam", "Pritam", "Pritam", "Pritam", "Pritam"];
    return Container(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CatImages.length,
        itemBuilder: (BuildContext context, int index) {
          // You can customize the CircleAvatar here
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  CatImages[index],
                  scale: 2.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatName[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
