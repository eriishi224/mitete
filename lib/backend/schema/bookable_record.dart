import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookableRecord extends FirestoreRecord {
  BookableRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sitter_id" field.
  String? _sitterId;
  String get sitterId => _sitterId ?? '';
  bool hasSitterId() => _sitterId != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "prefecture" field.
  String? _prefecture;
  String get prefecture => _prefecture ?? '';
  bool hasPrefecture() => _prefecture != null;

  // "cities" field.
  List<String>? _cities;
  List<String> get cities => _cities ?? const [];
  bool hasCities() => _cities != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  void _initializeFields() {
    _sitterId = snapshotData['sitter_id'] as String?;
    _date = snapshotData['date'] as String?;
    _prefecture = snapshotData['prefecture'] as String?;
    _cities = getDataList(snapshotData['cities']);
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookable');

  static Stream<BookableRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookableRecord.fromSnapshot(s));

  static Future<BookableRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookableRecord.fromSnapshot(s));

  static BookableRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookableRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookableRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookableRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookableRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookableRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookableRecordData({
  String? sitterId,
  String? date,
  String? prefecture,
  DateTime? startTime,
  DateTime? endTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sitter_id': sitterId,
      'date': date,
      'prefecture': prefecture,
      'start_time': startTime,
      'end_time': endTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookableRecordDocumentEquality implements Equality<BookableRecord> {
  const BookableRecordDocumentEquality();

  @override
  bool equals(BookableRecord? e1, BookableRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sitterId == e2?.sitterId &&
        e1?.date == e2?.date &&
        e1?.prefecture == e2?.prefecture &&
        listEquality.equals(e1?.cities, e2?.cities) &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime;
  }

  @override
  int hash(BookableRecord? e) => const ListEquality().hash([
        e?.sitterId,
        e?.date,
        e?.prefecture,
        e?.cities,
        e?.startTime,
        e?.endTime
      ]);

  @override
  bool isValidKey(Object? o) => o is BookableRecord;
}
