import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogsRecord extends FirestoreRecord {
  DogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "dog_name" field.
  String? _dogName;
  String get dogName => _dogName ?? '';
  bool hasDogName() => _dogName != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  bool hasBirthday() => _birthday != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "habit" field.
  String? _habit;
  String get habit => _habit ?? '';
  bool hasHabit() => _habit != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "kind" field.
  String? _kind;
  String get kind => _kind ?? '';
  bool hasKind() => _kind != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _dogName = snapshotData['dog_name'] as String?;
    _birthday = snapshotData['birthday'] as String?;
    _weight = snapshotData['weight'] as String?;
    _habit = snapshotData['habit'] as String?;
    _description = snapshotData['description'] as String?;
    _kind = snapshotData['kind'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dogs');

  static Stream<DogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DogsRecord.fromSnapshot(s));

  static Future<DogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DogsRecord.fromSnapshot(s));

  static DogsRecord fromSnapshot(DocumentSnapshot snapshot) => DogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDogsRecordData({
  String? userId,
  String? dogName,
  String? birthday,
  String? weight,
  String? habit,
  String? description,
  String? kind,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'dog_name': dogName,
      'birthday': birthday,
      'weight': weight,
      'habit': habit,
      'description': description,
      'kind': kind,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class DogsRecordDocumentEquality implements Equality<DogsRecord> {
  const DogsRecordDocumentEquality();

  @override
  bool equals(DogsRecord? e1, DogsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.dogName == e2?.dogName &&
        e1?.birthday == e2?.birthday &&
        e1?.weight == e2?.weight &&
        e1?.habit == e2?.habit &&
        e1?.description == e2?.description &&
        e1?.kind == e2?.kind &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(DogsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.dogName,
        e?.birthday,
        e?.weight,
        e?.habit,
        e?.description,
        e?.kind,
        e?.photo
      ]);

  @override
  bool isValidKey(Object? o) => o is DogsRecord;
}
