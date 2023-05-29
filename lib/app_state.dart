import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<dynamic> _apiPokenom = [];
  List<dynamic> get apiPokenom => _apiPokenom;
  set apiPokenom(List<dynamic> _value) {
    _apiPokenom = _value;
  }

  void addToApiPokenom(dynamic _value) {
    _apiPokenom.add(_value);
  }

  void removeFromApiPokenom(dynamic _value) {
    _apiPokenom.remove(_value);
  }

  void removeAtIndexFromApiPokenom(int _index) {
    _apiPokenom.removeAt(_index);
  }

  void updateApiPokenomAtIndex(
    int _index,
    Function(dynamic) updateFn,
  ) {
    updateFn(_apiPokenom[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
