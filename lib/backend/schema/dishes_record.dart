import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DishesRecord extends FirestoreRecord {
  DishesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "food_img" field.
  String? _foodImg;
  String get foodImg => _foodImg ?? '';
  bool hasFoodImg() => _foodImg != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "dsc" field.
  String? _dsc;
  String get dsc => _dsc ?? '';
  bool hasDsc() => _dsc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _foodImg = snapshotData['food_img'] as String?;
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _dsc = snapshotData['dsc'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dishes')
          : FirebaseFirestore.instance.collectionGroup('dishes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('dishes').doc();

  static Stream<DishesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DishesRecord.fromSnapshot(s));

  static Future<DishesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DishesRecord.fromSnapshot(s));

  static DishesRecord fromSnapshot(DocumentSnapshot snapshot) => DishesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DishesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DishesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DishesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DishesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDishesRecordData({
  String? foodImg,
  String? name,
  double? price,
  String? dsc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'food_img': foodImg,
      'name': name,
      'price': price,
      'dsc': dsc,
    }.withoutNulls,
  );

  return firestoreData;
}

class DishesRecordDocumentEquality implements Equality<DishesRecord> {
  const DishesRecordDocumentEquality();

  @override
  bool equals(DishesRecord? e1, DishesRecord? e2) {
    return e1?.foodImg == e2?.foodImg &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.dsc == e2?.dsc;
  }

  @override
  int hash(DishesRecord? e) =>
      const ListEquality().hash([e?.foodImg, e?.name, e?.price, e?.dsc]);

  @override
  bool isValidKey(Object? o) => o is DishesRecord;
}
