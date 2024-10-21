import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationShelterRecord extends FirestoreRecord {
  NotificationShelterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "BrowseName" field.
  String? _browseName;
  String get browseName => _browseName ?? '';
  bool hasBrowseName() => _browseName != null;

  // "VolunteerName" field.
  DocumentReference? _volunteerName;
  DocumentReference? get volunteerName => _volunteerName;
  bool hasVolunteerName() => _volunteerName != null;

  // "SenderName" field.
  DocumentReference? _senderName;
  DocumentReference? get senderName => _senderName;
  bool hasSenderName() => _senderName != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  void _initializeFields() {
    _location = snapshotData['Location'] as String?;
    _browseName = snapshotData['BrowseName'] as String?;
    _volunteerName = snapshotData['VolunteerName'] as DocumentReference?;
    _senderName = snapshotData['SenderName'] as DocumentReference?;
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notification_Shelter');

  static Stream<NotificationShelterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationShelterRecord.fromSnapshot(s));

  static Future<NotificationShelterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationShelterRecord.fromSnapshot(s));

  static NotificationShelterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationShelterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationShelterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationShelterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationShelterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationShelterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationShelterRecordData({
  String? location,
  String? browseName,
  DocumentReference? volunteerName,
  DocumentReference? senderName,
  String? title,
  String? description,
  DateTime? timeStamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Location': location,
      'BrowseName': browseName,
      'VolunteerName': volunteerName,
      'SenderName': senderName,
      'Title': title,
      'Description': description,
      'TimeStamp': timeStamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationShelterRecordDocumentEquality
    implements Equality<NotificationShelterRecord> {
  const NotificationShelterRecordDocumentEquality();

  @override
  bool equals(NotificationShelterRecord? e1, NotificationShelterRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.browseName == e2?.browseName &&
        e1?.volunteerName == e2?.volunteerName &&
        e1?.senderName == e2?.senderName &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.timeStamp == e2?.timeStamp;
  }

  @override
  int hash(NotificationShelterRecord? e) => const ListEquality().hash([
        e?.location,
        e?.browseName,
        e?.volunteerName,
        e?.senderName,
        e?.title,
        e?.description,
        e?.timeStamp
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationShelterRecord;
}
