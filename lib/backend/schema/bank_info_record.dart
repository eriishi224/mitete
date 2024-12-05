import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankInfoRecord extends FirestoreRecord {
  BankInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "branch_name" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  // "branch_code" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  bool hasBranchCode() => _branchCode != null;

  // "account_number" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  bool hasAccountName() => _accountName != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _bankName = snapshotData['bank_name'] as String?;
    _branchName = snapshotData['branch_name'] as String?;
    _branchCode = snapshotData['branch_code'] as String?;
    _accountNumber = castToType<int>(snapshotData['account_number']);
    _accountName = snapshotData['account_name'] as String?;
    _accountType = snapshotData['account_type'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bank_info')
          : FirebaseFirestore.instance.collectionGroup('bank_info');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('bank_info').doc(id);

  static Stream<BankInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BankInfoRecord.fromSnapshot(s));

  static Future<BankInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BankInfoRecord.fromSnapshot(s));

  static BankInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BankInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BankInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BankInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BankInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BankInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBankInfoRecordData({
  String? bankName,
  String? branchName,
  String? branchCode,
  int? accountNumber,
  String? accountName,
  String? accountType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bank_name': bankName,
      'branch_name': branchName,
      'branch_code': branchCode,
      'account_number': accountNumber,
      'account_name': accountName,
      'account_type': accountType,
    }.withoutNulls,
  );

  return firestoreData;
}

class BankInfoRecordDocumentEquality implements Equality<BankInfoRecord> {
  const BankInfoRecordDocumentEquality();

  @override
  bool equals(BankInfoRecord? e1, BankInfoRecord? e2) {
    return e1?.bankName == e2?.bankName &&
        e1?.branchName == e2?.branchName &&
        e1?.branchCode == e2?.branchCode &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.accountName == e2?.accountName &&
        e1?.accountType == e2?.accountType;
  }

  @override
  int hash(BankInfoRecord? e) => const ListEquality().hash([
        e?.bankName,
        e?.branchName,
        e?.branchCode,
        e?.accountNumber,
        e?.accountName,
        e?.accountType
      ]);

  @override
  bool isValidKey(Object? o) => o is BankInfoRecord;
}
