// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestlistStruct extends FFFirebaseStruct {
  RequestlistStruct({
    String? shelterName,
    List<String>? selecttheTypeofBrowse,
    int? quantityNeeded,
    DateTime? dueDate,
    DateTime? time,
    String? extra,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _shelterName = shelterName,
        _selecttheTypeofBrowse = selecttheTypeofBrowse,
        _quantityNeeded = quantityNeeded,
        _dueDate = dueDate,
        _time = time,
        _extra = extra,
        super(firestoreUtilData);

  // "ShelterName" field.
  String? _shelterName;
  String get shelterName => _shelterName ?? '';
  set shelterName(String? val) => _shelterName = val;

  bool hasShelterName() => _shelterName != null;

  // "SelecttheTypeofBrowse" field.
  List<String>? _selecttheTypeofBrowse;
  List<String> get selecttheTypeofBrowse => _selecttheTypeofBrowse ?? const [];
  set selecttheTypeofBrowse(List<String>? val) => _selecttheTypeofBrowse = val;

  void updateSelecttheTypeofBrowse(Function(List<String>) updateFn) {
    updateFn(_selecttheTypeofBrowse ??= []);
  }

  bool hasSelecttheTypeofBrowse() => _selecttheTypeofBrowse != null;

  // "QuantityNeeded" field.
  int? _quantityNeeded;
  int get quantityNeeded => _quantityNeeded ?? 0;
  set quantityNeeded(int? val) => _quantityNeeded = val;

  void incrementQuantityNeeded(int amount) =>
      quantityNeeded = quantityNeeded + amount;

  bool hasQuantityNeeded() => _quantityNeeded != null;

  // "DueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  set dueDate(DateTime? val) => _dueDate = val;

  bool hasDueDate() => _dueDate != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;

  bool hasTime() => _time != null;

  // "extra" field.
  String? _extra;
  String get extra => _extra ?? '';
  set extra(String? val) => _extra = val;

  bool hasExtra() => _extra != null;

  static RequestlistStruct fromMap(Map<String, dynamic> data) =>
      RequestlistStruct(
        shelterName: data['ShelterName'] as String?,
        selecttheTypeofBrowse: getDataList(data['SelecttheTypeofBrowse']),
        quantityNeeded: castToType<int>(data['QuantityNeeded']),
        dueDate: data['DueDate'] as DateTime?,
        time: data['Time'] as DateTime?,
        extra: data['extra'] as String?,
      );

  static RequestlistStruct? maybeFromMap(dynamic data) => data is Map
      ? RequestlistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ShelterName': _shelterName,
        'SelecttheTypeofBrowse': _selecttheTypeofBrowse,
        'QuantityNeeded': _quantityNeeded,
        'DueDate': _dueDate,
        'Time': _time,
        'extra': _extra,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ShelterName': serializeParam(
          _shelterName,
          ParamType.String,
        ),
        'SelecttheTypeofBrowse': serializeParam(
          _selecttheTypeofBrowse,
          ParamType.String,
          isList: true,
        ),
        'QuantityNeeded': serializeParam(
          _quantityNeeded,
          ParamType.int,
        ),
        'DueDate': serializeParam(
          _dueDate,
          ParamType.DateTime,
        ),
        'Time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'extra': serializeParam(
          _extra,
          ParamType.String,
        ),
      }.withoutNulls;

  static RequestlistStruct fromSerializableMap(Map<String, dynamic> data) =>
      RequestlistStruct(
        shelterName: deserializeParam(
          data['ShelterName'],
          ParamType.String,
          false,
        ),
        selecttheTypeofBrowse: deserializeParam<String>(
          data['SelecttheTypeofBrowse'],
          ParamType.String,
          true,
        ),
        quantityNeeded: deserializeParam(
          data['QuantityNeeded'],
          ParamType.int,
          false,
        ),
        dueDate: deserializeParam(
          data['DueDate'],
          ParamType.DateTime,
          false,
        ),
        time: deserializeParam(
          data['Time'],
          ParamType.DateTime,
          false,
        ),
        extra: deserializeParam(
          data['extra'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RequestlistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RequestlistStruct &&
        shelterName == other.shelterName &&
        listEquality.equals(
            selecttheTypeofBrowse, other.selecttheTypeofBrowse) &&
        quantityNeeded == other.quantityNeeded &&
        dueDate == other.dueDate &&
        time == other.time &&
        extra == other.extra;
  }

  @override
  int get hashCode => const ListEquality().hash([
        shelterName,
        selecttheTypeofBrowse,
        quantityNeeded,
        dueDate,
        time,
        extra
      ]);
}

RequestlistStruct createRequestlistStruct({
  String? shelterName,
  int? quantityNeeded,
  DateTime? dueDate,
  DateTime? time,
  String? extra,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RequestlistStruct(
      shelterName: shelterName,
      quantityNeeded: quantityNeeded,
      dueDate: dueDate,
      time: time,
      extra: extra,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RequestlistStruct? updateRequestlistStruct(
  RequestlistStruct? requestlist, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    requestlist
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRequestlistStructData(
  Map<String, dynamic> firestoreData,
  RequestlistStruct? requestlist,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (requestlist == null) {
    return;
  }
  if (requestlist.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && requestlist.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final requestlistData =
      getRequestlistFirestoreData(requestlist, forFieldValue);
  final nestedData =
      requestlistData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = requestlist.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRequestlistFirestoreData(
  RequestlistStruct? requestlist, [
  bool forFieldValue = false,
]) {
  if (requestlist == null) {
    return {};
  }
  final firestoreData = mapToFirestore(requestlist.toMap());

  // Add any Firestore field values
  requestlist.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRequestlistListFirestoreData(
  List<RequestlistStruct>? requestlists,
) =>
    requestlists?.map((e) => getRequestlistFirestoreData(e, true)).toList() ??
    [];
