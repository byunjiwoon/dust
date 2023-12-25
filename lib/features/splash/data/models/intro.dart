import 'package:fluttergame/features/splash/domain/entities/intro_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart' show immutable;
part 'intro.g.dart';

@immutable
@JsonSerializable()
class Intro extends IntroEntity{
  const Intro({
    super.id,
    required super.name,
  });

  factory Intro.fromJson(Map<String, dynamic> json) => _$IntroFromJson(json);

  Map<String, dynamic> toJson() => _$IntroToJson(this);
}
