import 'dart:convert';

AlbumModel albumModelFromMap(String str) =>
    AlbumModel.fromMap(json.decode(str));

String albumModelToMap(AlbumModel data) => json.encode(data.toMap());

class AlbumModel {
  AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  final int userId;
  final int id;
  final String title;

  factory AlbumModel.fromMap(Map<String, dynamic> json) => AlbumModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
