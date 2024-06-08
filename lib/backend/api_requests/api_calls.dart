import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start crud Group Code

class CrudGroup {
  static String getBaseUrl() => 'https://ci-crud.onrender.com';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static GetCartoesByUserCall getCartoesByUserCall = GetCartoesByUserCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? password = '',
  }) async {
    final baseUrl = CrudGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nome_usuario": "$user",
  "senha_usuario": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/usuarios/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCartoesByUserCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final baseUrl = CrudGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCartoesByUser',
      apiUrl: '$baseUrl/cartoes/user/$userId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End crud Group Code

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
