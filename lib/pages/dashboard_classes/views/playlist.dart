import 'dart:convert';
import 'package:conquistandoomundo/pages/dashboard_classes/views/youtube_player.dart';
import 'package:conquistandoomundo/util/widgets/spacer_builder.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:conquistandoomundo/domain/models/youtube_video_info.dart';
import 'package:conquistandoomundo/infra/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Playlist extends StatefulWidget {
  List<String> ids = [];

  Playlist(this.ids, {Key? key}) : super(key: key);

  @override
  _PlaylistState createState() => _PlaylistState(ids);
}

class _PlaylistState extends State<Playlist> {
  List<String> ids = [];

  List<YoutubeVideoInfo?> listData = [];

  _PlaylistState(this.ids);

  @override
  Widget build(BuildContext context) {
    const thumbnailWidth = 100.0;
    const thumbnailHeight = 0.5625 * thumbnailWidth;

    List<Future<YoutubeVideoInfo?>> items = widget.ids.map((i) async {
      var result = await Repository.getVideoInfo(i);
      if (result.statusCode == 200) {
        var data = YoutubeVideoInfo.fromJson(jsonDecode(result.body));
        return data;
      }
    }).toList();

    return Container(
        height: 590,
        child: YoutubeValueBuilder(builder: (context, value) {
          return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                _loadItem() {
                  context.ytController.load(widget.ids[index]);
                }

                /*return Builder(builder: (context) {
                  var data = listData[index];
                  if (data != null) {
                    return Column(children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildSpacer(width: 15),
                          ImageNetwork(
                            image: data.thumbnailURL,
                            height: thumbnailHeight,
                            width: thumbnailWidth,
                            onPointer: true,
                            onTap: () => _loadItem(),
                          ),
                          buildSpacer(width: 15),
                          MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () => _loadItem(),
                                child: Flexible(
                                  child: Text(data.title),
                                ),
                              ))
                        ],
                      ),
                      buildSpacer(height: 10)
                    ]);
                  }
                  return Text("");
                }); */
                return FutureBuilder<YoutubeVideoInfo?>(
                    future: items[index],
                    builder: ((context, snapshot) {
                      var data = snapshot.data;

                      if (data != null) {
                        return Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildSpacer(width: 15),
                              ImageNetwork(
                                image: data.thumbnailURL,
                                height: thumbnailHeight,
                                width: thumbnailWidth,
                                onPointer: true,
                                onTap: () => _loadItem(),
                              ),
                              buildSpacer(width: 15),
                              MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => _loadItem(),
                                    child: Flexible(
                                      child: Text(data.title),
                                    ),
                                  ))
                            ],
                          ),
                          buildSpacer(height: 10)
                        ]);
                      }
                      return Text("Default");
                    }));
              });
        }));
  }
}
