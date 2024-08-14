import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Browse_Name" field.
  String? _browseName;
  String get browseName => _browseName ?? '';
  bool hasBrowseName() => _browseName != null;

  // "Volunteer_Name" field.
  String? _volunteerName;
  String get volunteerName => _volunteerName ?? '';
  bool hasVolunteerName() => _volunteerName != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Login_Type" field.
  bool? _loginType;
  bool get loginType => _loginType ?? false;
  bool hasLoginType() => _loginType != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _browseName = snapshotData['Browse_Name'] as String?;
    _volunteerName = snapshotData['Volunteer_Name'] as String?;
    _location = snapshotData['Location'] as String?;
    _loginType = snapshotData['Login_Type'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  String? title,
  String? description,
  DateTime? time,
  String? browseName,
  String? volunteerName,
  String? location,
  bool? loginType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Description': description,
      'Time': time,
      'Browse_Name': browseName,
      'Volunteer_Name': volunteerName,
      'Location': location,
      'Login_Type': loginType,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.time == e2?.time &&
        e1?.browseName == e2?.browseName &&
        e1?.volunteerName == e2?.volunteerName &&
        e1?.location == e2?.location &&
        e1?.loginType == e2?.loginType;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.time,
        e?.browseName,
        e?.volunteerName,
        e?.location,
        e?.loginType
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
