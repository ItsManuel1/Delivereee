import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AiCall {
  static Future<ApiCallResponse> call({
    String? userMessage = 'salty',
    String? role =
        'role:You are a famous chef that always answer in one sentence. and you will always suggest a food to eat. example:  You can eat Steak!',
  }) {
    final body = '''
{
  "model": "text-davinci-003",
  "prompt": "Just give me a food name that is ${userMessage}",
  "temperature": 0.8,
  "max_tokens": 10
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ai',
      apiUrl: 'https://api.openai.com/v1/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic foodname(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].text''',
        true,
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
