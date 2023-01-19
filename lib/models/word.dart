import 'dart:convert';
import 'dart:ffi';


class Word {
  final String name;
  final String description;
  final String images;
  final String category;
  final Int level;
  final String? id;

  Word({
    required this.name,
    required this.description,
    required this.images,
    required this.category,
    required this.level,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'images': images,
      'category': category,
      'level': level,
      'id': id,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map) {
    return Word(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: map['images'] ?? '',
      category: map['category'] ?? '',
      level: map['level']?? 0,
      id: map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Word.fromJson(String source) =>
      Word.fromMap(json.decode(source));
}
