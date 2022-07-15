class YoutubeVideoInfo {
  String? title;
  String? authorName;
  String? authorURL;
  String? type;
  int? height;
  int? width;
  String? version;
  String? providerName;
  String? providerURL;
  int? thumbnailHeight;
  int? thumbnailWidth;
  String? thumbnailURL;
  String? html;

  YoutubeVideoInfo(
      {this.title,
      this.authorName,
      this.authorURL,
      this.type,
      this.height,
      this.width,
      this.version,
      this.providerName,
      this.providerURL,
      this.thumbnailHeight,
      this.thumbnailWidth,
      this.thumbnailURL,
      this.html});

  YoutubeVideoInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authorName = json['author_name'];
    authorURL = json['author_url'];
    type = json['type'];
    height = json['height'];
    width = json['width'];
    version = json['version'];
    providerName = json['provider_name'];
    providerURL = json['provider_url'];
    thumbnailHeight = json['thumbnail_height'];
    thumbnailWidth = json['thumbnail_width'];
    thumbnailURL = json['thumbnail_url'];
    html = json['html'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = title;
    data['author_name'] = authorName;
    data['author_url'] = authorURL;
    data['type'] = type;
    data['height'] = height;
    data['width'] = width;
    data['version'] = version;
    data['provider_name'] = providerName;
    data['provider_url'] = providerURL;
    data['thumbnail_height'] = thumbnailHeight;
    data['thumbnail_width'] = thumbnailWidth;
    data['thumbnail_url'] = thumbnailURL;
    data['html'] = html;
    return data;
  }
}
