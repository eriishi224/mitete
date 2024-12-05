import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
  }

  List<String> _selectedPrefectures = [];
  List<String> get selectedPrefectures => _selectedPrefectures;
  set selectedPrefectures(List<String> value) {
    _selectedPrefectures = value;
  }

  void addToSelectedPrefectures(String value) {
    selectedPrefectures.add(value);
  }

  void removeFromSelectedPrefectures(String value) {
    selectedPrefectures.remove(value);
  }

  void removeAtIndexFromSelectedPrefectures(int index) {
    selectedPrefectures.removeAt(index);
  }

  void updateSelectedPrefecturesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedPrefectures[index] = updateFn(_selectedPrefectures[index]);
  }

  void insertAtIndexInSelectedPrefectures(int index, String value) {
    selectedPrefectures.insert(index, value);
  }

  bool _showBookRequestModal = false;
  bool get showBookRequestModal => _showBookRequestModal;
  set showBookRequestModal(bool value) {
    _showBookRequestModal = value;
  }

  String _payment = '';
  String get payment => _payment;
  set payment(String value) {
    _payment = value;
  }

  String _depositTime = '';
  String get depositTime => _depositTime;
  set depositTime(String value) {
    _depositTime = value;
  }

  List<int> _totalNeverPayment = [];
  List<int> get totalNeverPayment => _totalNeverPayment;
  set totalNeverPayment(List<int> value) {
    _totalNeverPayment = value;
  }

  void addToTotalNeverPayment(int value) {
    totalNeverPayment.add(value);
  }

  void removeFromTotalNeverPayment(int value) {
    totalNeverPayment.remove(value);
  }

  void removeAtIndexFromTotalNeverPayment(int index) {
    totalNeverPayment.removeAt(index);
  }

  void updateTotalNeverPaymentAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    totalNeverPayment[index] = updateFn(_totalNeverPayment[index]);
  }

  void insertAtIndexInTotalNeverPayment(int index, int value) {
    totalNeverPayment.insert(index, value);
  }

  String _selectPrefCode = '';
  String get selectPrefCode => _selectPrefCode;
  set selectPrefCode(String value) {
    _selectPrefCode = value;
  }

  List<String> _selectCities = [];
  List<String> get selectCities => _selectCities;
  set selectCities(List<String> value) {
    _selectCities = value;
  }

  void addToSelectCities(String value) {
    selectCities.add(value);
  }

  void removeFromSelectCities(String value) {
    selectCities.remove(value);
  }

  void removeAtIndexFromSelectCities(int index) {
    selectCities.removeAt(index);
  }

  void updateSelectCitiesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectCities[index] = updateFn(_selectCities[index]);
  }

  void insertAtIndexInSelectCities(int index, String value) {
    selectCities.insert(index, value);
  }

  String _selectedPref = '';
  String get selectedPref => _selectedPref;
  set selectedPref(String value) {
    _selectedPref = value;
  }

  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? value) {
    _startTime = value;
  }

  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? value) {
    _endTime = value;
  }

  String _apiResponceBody = '';
  String get apiResponceBody => _apiResponceBody;
  set apiResponceBody(String value) {
    _apiResponceBody = value;
  }

  final _userDocQueryManager = StreamRequestManager<UsersRecord>();
  Stream<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}
