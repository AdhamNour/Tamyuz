// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';

class Course {
  final int id;
  final String title;
  final String description;
  final String type;
  final String duration;
  final String created_at;
  final String updated_at;
  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.duration,
    required this.created_at,
    required this.updated_at,
  });

  Course copyWith({
    int? id,
    String? title,
    String? description,
    String? type,
    String? duration,
    String? created_at,
    String? updated_at,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      duration: duration ?? this.duration,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type,
      'duration': duration,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      type: map['type'],
      duration: map['duration'],
      created_at: map['created_at'],
      updated_at: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) => Course.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Course(id: $id, title: $title, description: $description, type: $type, duration: $duration, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Course &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.type == type &&
        other.duration == duration &&
        other.created_at == created_at &&
        other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        type.hashCode ^
        duration.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode;
  }
}
