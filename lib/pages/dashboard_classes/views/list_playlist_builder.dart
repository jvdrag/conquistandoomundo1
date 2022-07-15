import 'dart:convert';

import 'package:conquistandoomundo/domain/models/youtube_video_info.dart';
import 'package:conquistandoomundo/infra/repository.dart';
import 'package:flutter/cupertino.dart';

Widget ListBuilder(List<String> ids) {
  List<Future<YoutubeVideoInfo?>> items = ids.map((i) async {
    var result = await Repository.getVideoInfo(i);
    if (result.statusCode == 200) {
      var data = YoutubeVideoInfo.fromJson(jsonDecode(result.body));
      return data;
    }
  }).toList();

  return Builder(
      builder: (context) => Container(
          height: 500,
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => FutureBuilder<YoutubeVideoInfo?>(
                  future: items[index],
                  builder: ((context, snapshot) {
                    var value = snapshot.data?.title;
                    if (value != null) {
                      return Text(value);
                    }
                    return Text("Default");
                  })))));
}
