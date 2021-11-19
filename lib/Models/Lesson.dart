// ignore_for_file: non_constant_identifier_Lessons, file_names, non_constant_identifier_names

import 'dart:convert';

class Lesson {
  final int id;
  final String title;
  final String description;
  final String content;
  final int course_id;
  final String created_at;
  final String updated_at;
  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.course_id,
    required this.created_at,
    required this.updated_at,
  });

  Lesson copyWith({
    int? id,
    String? title,
    String? description,
    String? content,
    int? course_id,
    String? created_at,
    String? updated_at,
  }) {
    return Lesson(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      course_id: course_id ?? this.course_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'content': content,
      'course_id': course_id,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      content: map['content'],
      course_id: map['course_id'],
      created_at: map['created_at'],
      updated_at: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Lesson.fromJson(String source) => Lesson.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Lesson(id: $id, title: $title, description: $description, content: $content, course_id: $course_id, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Lesson &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.content == content &&
        other.course_id == course_id &&
        other.created_at == created_at &&
        other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        content.hashCode ^
        course_id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode;
  }
}
