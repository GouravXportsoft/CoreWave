import 'package:corewave/current_player.dart';
import 'package:corewave/player_screen.dart';
import 'package:flutter/material.dart';
import 'package:corewave/consts/imgConst.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SafeArea(
            child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: true,
                    backgroundColor: Colors.black,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    pinned: true,
                    snap: false,
                    floating: false,
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.only(left: 0),
                      // title: const Row(
                      //   children: [
                      //     Text('Billie Eilish'),
                      //   ],
                      // ),
                      background: Image.asset(
                        billie, // Make sure you have 'recentply1' imported
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '3,459,02 Followers',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                child: const Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * .15,
                        ),
                        Image.asset(
                          musicbutton,
                          scale: 2,
                        )
                      ],
                    ),
                    ListView.builder(
                        itemCount: 7,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Image.asset(
                                        billi2,
                                        scale: 2,
                                      ),
                                    ),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Copycat',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'Single - Latest release',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
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
                    const SizedBox(
                      height: 20,
                    ),
                    NewRelease(),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Image.asset(
                        girlImg,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
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
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 51, 38, 38),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    release1,
                                    scale: 6,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    size: 30,
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
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                            child: LinearProgressIndicator(
                              value: .3,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.red),
                              // value: ,
                              backgroundColor: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    CatImages[index],
                    scale: 2,
                  ),
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
