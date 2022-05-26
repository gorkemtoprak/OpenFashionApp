import 'dart:convert';

class BlogModel {
  String? id;
  String? title;
  String? image;
  String? description;
  BlogModel({
    this.id,
    this.title,
    this.image,
    this.description,
  });

  BlogModel copyWith({
    String? id,
    String? title,
    String? image,
    String? description,
  }) {
    return BlogModel(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'description': description,
    };
  }

  factory BlogModel.fromMap(Map<String, dynamic> map) {
    return BlogModel(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BlogModel.fromJson(String source) =>
      BlogModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BlogModel(id: $id, title: $title, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BlogModel &&
        other.id == id &&
        other.title == title &&
        other.image == image &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ image.hashCode ^ description.hashCode;
  }
}
