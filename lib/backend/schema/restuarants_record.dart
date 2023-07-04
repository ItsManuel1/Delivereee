import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestuarantsRecord extends FirestoreRecord {
  RestuarantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "d_cost" field.
  String? _dCost;
  String get dCost => _dCost ?? '';
  bool hasDCost() => _dCost != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  bool hasDistance() => _distance != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _dCost = snapshotData['d_cost'] as String?;
    _distance = snapshotData['distance'] as String?;
    _img = snapshotData['img'] as String?;
    _name = snapshotData['name'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restuarants');

  static Stream<RestuarantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestuarantsRecord.fromSnapshot(s));

  static Future<RestuarantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestuarantsRecord.fromSnapshot(s));

  static RestuarantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestuarantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestuarantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestuarantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestuarantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestuarantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestuarantsRecordData({
  String? dCost,
  String? distance,
  String? img,
  String? name,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'd_cost': dCost,
      'distance': distance,
      'img': img,
      'name': name,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestuarantsRecordDocumentEquality implements Equality<RestuarantsRecord> {
  const RestuarantsRecordDocumentEquality();

  @override
  bool equals(RestuarantsRecord? e1, RestuarantsRecord? e2) {
    return e1?.dCost == e2?.dCost &&
        e1?.distance == e2?.distance &&
        e1?.img == e2?.img &&
        e1?.name == e2?.name &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(RestuarantsRecord? e) => const ListEquality()
      .hash([e?.dCost, e?.distance, e?.img, e?.name, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is RestuarantsRecord;
}
