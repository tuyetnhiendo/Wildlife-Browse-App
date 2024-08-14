import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestHistoryRecord extends FirestoreRecord {
  RequestHistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Pending" field.
  bool? _pending;
  bool get pending => _pending ?? false;
  bool hasPending() => _pending != null;

  // "Browse_name" field.
  String? _browseName;
  String get browseName => _browseName ?? '';
  bool hasBrowseName() => _browseName != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _pending = snapshotData['Pending'] as bool?;
    _browseName = snapshotData['Browse_name'] as String?;
    _location = snapshotData['Location'] as String?;
    _status = snapshotData['Status'] as String?;
    _accepted = snapshotData['Accepted'] as bool?;
    _completed = snapshotData['completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Request_History');

  static Stream<RequestHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestHistoryRecord.fromSnapshot(s));

  static Future<RequestHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestHistoryRecord.fromSnapshot(s));

  static RequestHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestHistoryRecordData({
  bool? pending,
  String? browseName,
  String? location,
  String? status,
  bool? accepted,
  bool? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Pending': pending,
      'Browse_name': browseName,
      'Location': location,
      'Status': status,
      'Accepted': accepted,
      'completed': completed,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestHistoryRecordDocumentEquality
    implements Equality<RequestHistoryRecord> {
  const RequestHistoryRecordDocumentEquality();

  @override
  bool equals(RequestHistoryRecord? e1, RequestHistoryRecord? e2) {
    return e1?.pending == e2?.pending &&
        e1?.browseName == e2?.browseName &&
        e1?.location == e2?.location &&
        e1?.status == e2?.status &&
        e1?.accepted == e2?.accepted &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(RequestHistoryRecord? e) => const ListEquality().hash([
        e?.pending,
        e?.browseName,
        e?.location,
        e?.status,
        e?.accepted,
        e?.completed
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestHistoryRecord;
}
