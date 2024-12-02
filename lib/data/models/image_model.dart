/// id : 2
/// profiles : [{"aspect_ratio":0.667,"height":1080,"iso_639_1":null,"file_path":"/2ZulC2Ccq1yv3pemusks6Zlfy2s.jpg","vote_average":5.586,"vote_count":7,"width":720},{"aspect_ratio":0.667,"height":1919,"iso_639_1":null,"file_path":"/zMQ93JTLW8KxusKhOlHFZhih3YQ.jpg","vote_average":5.576,"vote_count":13,"width":1280},{"aspect_ratio":0.667,"height":2178,"iso_639_1":null,"file_path":"/9Wws35pCsT0KoZpiV4Gk5nbn9ZD.jpg","vote_average":5.346,"vote_count":17,"width":1452},{"aspect_ratio":0.667,"height":1026,"iso_639_1":null,"file_path":"/bMonrxrIEpokFTXUbZx8VnZ7xb3.jpg","vote_average":5.312,"vote_count":1,"width":684}]

class ImageModel {
  ImageModel({
      this.id, 
      this.profiles,});

  ImageModel.fromJson(dynamic json) {
    id = json['id'];
    if (json['profiles'] != null) {
      profiles = [];
      json['profiles'].forEach((v) {
        profiles?.add(Profiles.fromJson(v));
      });
    }
  }
  num? id;
  List<Profiles>? profiles;
ImageModel copyWith({  num? id,
  List<Profiles>? profiles,
}) => ImageModel(  id: id ?? this.id,
  profiles: profiles ?? this.profiles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (profiles != null) {
      map['profiles'] = profiles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// aspect_ratio : 0.667
/// height : 1080
/// iso_639_1 : null
/// file_path : "/2ZulC2Ccq1yv3pemusks6Zlfy2s.jpg"
/// vote_average : 5.586
/// vote_count : 7
/// width : 720

class Profiles {
  Profiles({
      this.aspectRatio, 
      this.height, 
      this.iso6391, 
      this.filePath, 
      this.voteAverage, 
      this.voteCount, 
      this.width,});

  Profiles.fromJson(dynamic json) {
    aspectRatio = json['aspect_ratio'];
    height = json['height'];
    iso6391 = json['iso_639_1'];
    filePath = json['file_path'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
  }
  num? aspectRatio;
  num? height;
  dynamic iso6391;
  String? filePath;
  num? voteAverage;
  num? voteCount;
  num? width;
Profiles copyWith({  num? aspectRatio,
  num? height,
  dynamic iso6391,
  String? filePath,
  num? voteAverage,
  num? voteCount,
  num? width,
}) => Profiles(  aspectRatio: aspectRatio ?? this.aspectRatio,
  height: height ?? this.height,
  iso6391: iso6391 ?? this.iso6391,
  filePath: filePath ?? this.filePath,
  voteAverage: voteAverage ?? this.voteAverage,
  voteCount: voteCount ?? this.voteCount,
  width: width ?? this.width,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['aspect_ratio'] = aspectRatio;
    map['height'] = height;
    map['iso_639_1'] = iso6391;
    map['file_path'] = filePath;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    map['width'] = width;
    return map;
  }

}