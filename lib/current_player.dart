import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentPlayer extends StatefulWidget {
  const CurrentPlayer({
    Key? key,
  }) : super(key: key);

  @override
  State<CurrentPlayer> createState() => _CurrentPlayerState();
}

class _CurrentPlayerState extends State<CurrentPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 300, sigmaY: 300),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black87,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.black, Colors.black45],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Column(
                                  children: [
                                    const Text(
                                      "NOW PLAYING",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "myAudio.metas.artist!,",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // showModalBottomSheet(
                                //     useRootNavigator: true,
                                //     isScrollControlled: true,
                                //     elevation: 100,
                                //     backgroundColor: Colors.black38,
                                //     context: context,
                                //     builder: (context) {
                                //       return BottomSheetWidget(
                                //           con: widget.con,
                                //           isNext: true,
                                //           song: SongModel(
                                //             songid: myAudio.metas.id,
                                //             songname:
                                //                 myAudio.metas.title,
                                //             userid: myAudio.metas.album,
                                //             trackid: myAudio.path,
                                //             duration: '',
                                //             coverImageUrl: myAudio
                                //                 .metas.image!.path,
                                //             name: myAudio.metas.artist,
                                //           ));
                                //     });
                              },
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        // child: CachedNetworkImage(
                        //   imageUrl: myAudio.metas.image!.path,
                        //   fit: BoxFit.cover,
                        //   memCacheHeight:
                        //       (200 * devicePexelRatio).round(),
                        //   memCacheWidth: (200 * devicePexelRatio).round(),
                        //   maxHeightDiskCache:
                        //       (200 * devicePexelRatio).round(),
                        //   maxWidthDiskCache:
                        //       (200 * devicePexelRatio).round(),
                        //   progressIndicatorBuilder: (context, url, l) =>
                        //       const LoadingImage(
                        //     icon: Icon(
                        //       LineIcons.compactDisc,
                        //       size: 120,
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: Text(
                                    "myAudio.metas.title!,",
                                    maxLines: 1,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: Text(
                                    "myAudio.metas.artist!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // LikeButton(
                          //   name: myAudio.metas.title!,
                          //   fullname: myAudio.metas.artist!,
                          //   username: myAudio.metas.album!,
                          //   id: myAudio.metas.id!,
                          //   track: myAudio.path,
                          //   isIcon: false,
                          //   cover: myAudio.metas.image!.path,
                          // ),
                          const SizedBox(width: 24)
                        ],
                      ),
                      Column(children: <Widget>[
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.download_sharp,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  CupertinoIcons.music_note_list,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                      ]),
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
