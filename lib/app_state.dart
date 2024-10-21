import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<RequestlistStruct> _requestlistt = [];
  List<RequestlistStruct> get requestlistt => _requestlistt;
  set requestlistt(List<RequestlistStruct> value) {
    _requestlistt = value;
  }

  void addToRequestlistt(RequestlistStruct value) {
    requestlistt.add(value);
  }

  void removeFromRequestlistt(RequestlistStruct value) {
    requestlistt.remove(value);
  }

  void removeAtIndexFromRequestlistt(int index) {
    requestlistt.removeAt(index);
  }

  void updateRequestlisttAtIndex(
    int index,
    RequestlistStruct Function(RequestlistStruct) updateFn,
  ) {
    requestlistt[index] = updateFn(_requestlistt[index]);
  }

  void insertAtIndexInRequestlistt(int index, RequestlistStruct value) {
    requestlistt.insert(index, value);
  }
}
