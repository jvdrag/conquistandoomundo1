import 'dart:convert';
import 'package:conquistandoomundo/pages/dashboard_classes/views/youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:conquistandoomundo/domain/models/youtube_video_info.dart';
import 'package:conquistandoomundo/infra/repository.dart';
import 'package:flutter/cupertino.dart';

class Playlist extends StatefulWidget {
  List<String> ids = [];

  Playlist(this.ids, {Key? key}) : super(key: key);

  @override
  _PlaylistState createState() => _PlaylistState(ids);
}

class _PlaylistState extends State<Playlist> {
  List<String> ids = [];

  _PlaylistState(this.ids);

  @override
  Widget build(BuildContext context) {
    List<Future<YoutubeVideoInfo?>> items = widget.ids.map((i) async {
      var result = await Repository.getVideoInfo(i);
      if (result.statusCode == 200) {
        var data = YoutubeVideoInfo.fromJson(jsonDecode(result.body));
        return data;
      }
    }).toList();

    return Container(
        height: 590,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) => FutureBuilder<YoutubeVideoInfo?>(
                future: items[index],
                builder: ((context, snapshot) {
                  var data = snapshot.data;

                  if (data != null) {
                    return Column(children: [
                      Row(
                        children: [
                          ImageNetwork(
                            image: data.thumbnailURL,
                            height: 70,
                            width: 100,
                            onPointer: true,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(data.title),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ]);
                  }
                  return Text("Default");
                }))));
  }
}
