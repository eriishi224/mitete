import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "diet" field.
  String? _diet;
  String get diet => _diet ?? '';
  bool hasDiet() => _diet != null;

  // "allergens" field.
  List<String>? _allergens;
  List<String> get allergens => _allergens ?? const [];
  bool hasAllergens() => _allergens != null;

  // "ingredient_dislikes" field.
  List<String>? _ingredientDislikes;
  List<String> get ingredientDislikes => _ingredientDislikes ?? const [];
  bool hasIngredientDislikes() => _ingredientDislikes != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "shopurl" field.
  String? _shopurl;
  String get shopurl => _shopurl ?? '';
  bool hasShopurl() => _shopurl != null;

  // "dogs" field.
  List<String>? _dogs;
  List<String> get dogs => _dogs ?? const [];
  bool hasDogs() => _dogs != null;

  // "dogsRef" field.
  List<DocumentReference>? _dogsRef;
  List<DocumentReference> get dogsRef => _dogsRef ?? const [];
  bool hasDogsRef() => _dogsRef != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "authPhoto" field.
  String? _authPhoto;
  String get authPhoto => _authPhoto ?? '';
  bool hasAuthPhoto() => _authPhoto != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "approval" field.
  bool? _approval;
  bool get approval => _approval ?? false;
  bool hasApproval() => _approval != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _diet = snapshotData['diet'] as String?;
    _allergens = getDataList(snapshotData['allergens']);
    _ingredientDislikes = getDataList(snapshotData['ingredient_dislikes']);
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _shopurl = snapshotData['shopurl'] as String?;
    _dogs = getDataList(snapshotData['dogs']);
    _dogsRef = getDataList(snapshotData['dogsRef']);
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _authPhoto = snapshotData['authPhoto'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _approval = snapshotData['approval'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? diet,
  String? name,
  String? description,
  String? shopurl,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? authPhoto,
  String? fullName,
  bool? approval,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'diet': diet,
      'name': name,
      'description': description,
      'shopurl': shopurl,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'authPhoto': authPhoto,
      'full_name': fullName,
      'approval': approval,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.diet == e2?.diet &&
        listEquality.equals(e1?.allergens, e2?.allergens) &&
        listEquality.equals(e1?.ingredientDislikes, e2?.ingredientDislikes) &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.shopurl == e2?.shopurl &&
        listEquality.equals(e1?.dogs, e2?.dogs) &&
        listEquality.equals(e1?.dogsRef, e2?.dogsRef) &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.authPhoto == e2?.authPhoto &&
        e1?.fullName == e2?.fullName &&
        e1?.approval == e2?.approval;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.diet,
        e?.allergens,
        e?.ingredientDislikes,
        e?.name,
        e?.description,
        e?.shopurl,
        e?.dogs,
        e?.dogsRef,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.authPhoto,
        e?.fullName,
        e?.approval
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
