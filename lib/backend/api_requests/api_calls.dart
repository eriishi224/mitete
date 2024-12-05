import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetPrefectureCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPrefecture',
      apiUrl: 'https://opendata.resas-portal.go.jp/api/v1/prefectures',
      callType: ApiCallType.GET,
      headers: {
        'X-API-KEY': 'CyOeTAdGEFuoVvsFAwZr3fvHeAISYLM2o1bZFEg3',
        'Content-Type': 'application/json;charset=UTF-8',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? prefName(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].prefName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCitiesCall {
  static Future<ApiCallResponse> call({
    String? selectPrefCode = '',
    String? prefCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCities',
      apiUrl: 'https://opendata.resas-portal.go.jp/api/v1/cities?prefCode=1',
      callType: ApiCallType.GET,
      headers: {
        'X-API-KEY': 'CyOeTAdGEFuoVvsFAwZr3fvHeAISYLM2o1bZFEg3',
        'Content-Type': 'application/json;charset=UTF-8',
      },
      params: {
        'prefCode': selectPrefCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? citiesName(dynamic response) => (getJsonField(
        response,
        r'''$.result[:].cityName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
