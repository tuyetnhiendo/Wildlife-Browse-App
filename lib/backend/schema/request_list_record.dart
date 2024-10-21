import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestListRecord extends FirestoreRecord {
  RequestListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ShelterName" field.
  String? _shelterName;
  String get shelterName => _shelterName ?? '';
  bool hasShelterName() => _shelterName != null;

  // "SelecttheTypeofBrowse" field.
  List<String>? _selecttheTypeofBrowse;
  List<String> get selecttheTypeofBrowse => _selecttheTypeofBrowse ?? const [];
  bool hasSelecttheTypeofBrowse() => _selecttheTypeofBrowse != null;

  // "QuantityNeeded" field.
  int? _quantityNeeded;
  int get quantityNeeded => _quantityNeeded ?? 0;
  bool hasQuantityNeeded() => _quantityNeeded != null;

  // "DueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  void _initializeFields() {
    _shelterName = snapshotData['ShelterName'] as String?;
    _selecttheTypeofBrowse = getDataList(snapshotData['SelecttheTypeofBrowse']);
    _quantityNeeded = castToType<int>(snapshotData['QuantityNeeded']);
    _dueDate = snapshotData['DueDate'] as DateTime?;
    _time = snapshotData['Time'] as DateTime?;
    _text = snapshotData['text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request_list');

  static Stream<RequestListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestListRecord.fromSnapshot(s));

  static Future<RequestListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestListRecord.fromSnapshot(s));

  static RequestListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestListRecordData({
  String? shelterName,
  int? quantityNeeded,
  DateTime? dueDate,
  DateTime? time,
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ShelterName': shelterName,
      'QuantityNeeded': quantityNeeded,
      'DueDate': dueDate,
      'Time': time,
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestListRecordDocumentEquality implements Equality<RequestListRecord> {
  const RequestListRecordDocumentEquality();

  @override
  bool equals(RequestListRecord? e1, RequestListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.shelterName == e2?.shelterName &&
        listEquality.equals(
            e1?.selecttheTypeofBrowse, e2?.selecttheTypeofBrowse) &&
        e1?.quantityNeeded == e2?.quantityNeeded &&
        e1?.dueDate == e2?.dueDate &&
        e1?.time == e2?.time &&
        e1?.text == e2?.text;
  }

  @override
  int hash(RequestListRecord? e) => const ListEquality().hash([
        e?.shelterName,
        e?.selecttheTypeofBrowse,
        e?.quantityNeeded,
        e?.dueDate,
        e?.time,
        e?.text
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestListRecord;
}
