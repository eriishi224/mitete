import 'package:collection/collection.dart';

enum MatchStatus {
  applying,
  applied,
  rejected,
  keeping,
  returned,
  paied,
  payRequest,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (MatchStatus):
      return MatchStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
