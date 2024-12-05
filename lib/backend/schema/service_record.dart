import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceRecord extends FirestoreRecord {
  ServiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "terms_of_service" field.
  String? _termsOfService;
  String get termsOfService => _termsOfService ?? '';
  bool hasTermsOfService() => _termsOfService != null;

  void _initializeFields() {
    _termsOfService = snapshotData['terms_of_service'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('service');

  static Stream<ServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceRecord.fromSnapshot(s));

  static Future<ServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceRecord.fromSnapshot(s));

  static ServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceRecordData({
  String? termsOfService,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'terms_of_service': termsOfService,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceRecordDocumentEquality implements Equality<ServiceRecord> {
  const ServiceRecordDocumentEquality();

  @override
  bool equals(ServiceRecord? e1, ServiceRecord? e2) {
    return e1?.termsOfService == e2?.termsOfService;
  }

  @override
  int hash(ServiceRecord? e) => const ListEquality().hash([e?.termsOfService]);

  @override
  bool isValidKey(Object? o) => o is ServiceRecord;
}
