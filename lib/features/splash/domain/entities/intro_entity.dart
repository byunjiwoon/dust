import 'package:flutter/foundation.dart' show immutable;

@immutable
class IntroEntity {
  const IntroEntity({
    this.id,
    required this.name
  });

  final int? id;
  final String name;


  @override
  String toString() {
    return 'Comment{id: $id, name: $name}';
  }

}

enum Gender { male, female, all }

enum UserStatus { inactive, active, all }

enum TodoStatus {
  completed(true),
  pending(false),
  all(false);

  final bool value;

  const TodoStatus(this.value);
}

