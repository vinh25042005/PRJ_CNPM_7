import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _DarkMode = prefs.getBool('ff_DarkMode') ?? _DarkMode;
    });
    _safeInit(() {
      _searchQuery = prefs.getString('ff_searchQuery') ?? _searchQuery;
    });
    _safeInit(() {
      _sortOption = prefs.getString('ff_sortOption') ?? _sortOption;
    });
    _safeInit(() {
      _isDetailVisible =
          prefs.getBool('ff_isDetailVisible') ?? _isDetailVisible;
    });
    _safeInit(() {
      _searchTask = prefs.getString('ff_searchTask') ?? _searchTask;
    });
    _safeInit(() {
      _sortTask = prefs.getString('ff_sortTask') ?? _sortTask;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _DarkMode = false;
  bool get DarkMode => _DarkMode;
  set DarkMode(bool value) {
    _DarkMode = value;
    prefs.setBool('ff_DarkMode', value);
  }

  PieValueStruct _pieValue = PieValueStruct.fromSerializableMap(
      jsonDecode('{\"Done\":\"35\",\"WorkingOn\":\"40\",\"Pending\":\"25\"}'));
  PieValueStruct get pieValue => _pieValue;
  set pieValue(PieValueStruct value) {
    _pieValue = value;
  }

  void updatePieValueStruct(Function(PieValueStruct) updateFn) {
    updateFn(_pieValue);
  }

  List<bool> _visibleRows = [true, true, true, true, true, true];
  List<bool> get visibleRows => _visibleRows;
  set visibleRows(List<bool> value) {
    _visibleRows = value;
  }

  void addToVisibleRows(bool value) {
    visibleRows.add(value);
  }

  void removeFromVisibleRows(bool value) {
    visibleRows.remove(value);
  }

  void removeAtIndexFromVisibleRows(int index) {
    visibleRows.removeAt(index);
  }

  void updateVisibleRowsAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    visibleRows[index] = updateFn(_visibleRows[index]);
  }

  void insertAtIndexInVisibleRows(int index, bool value) {
    visibleRows.insert(index, value);
  }

  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
    prefs.setString('ff_searchQuery', value);
  }

  String _sortOption = '';
  String get sortOption => _sortOption;
  set sortOption(String value) {
    _sortOption = value;
    prefs.setString('ff_sortOption', value);
  }

  bool _isDetailVisible = false;
  bool get isDetailVisible => _isDetailVisible;
  set isDetailVisible(bool value) {
    _isDetailVisible = value;
    prefs.setBool('ff_isDetailVisible', value);
  }

  String _searchTask = '';
  String get searchTask => _searchTask;
  set searchTask(String value) {
    _searchTask = value;
    prefs.setString('ff_searchTask', value);
  }

  String _sortTask = '';
  String get sortTask => _sortTask;
  set sortTask(String value) {
    _sortTask = value;
    prefs.setString('ff_sortTask', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
