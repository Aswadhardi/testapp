import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testapp/src/app.dart';
import 'package:testapp/src/providers/providers.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import '../test/src/common.dart';

void main() {
  final mockClient = MockClient((request) async {
    return Response(json.encode(exampleJsonResponse2), 200);
  });

  return runApp(AppProvider(
    httpClient: mockClient,
    child: MyApp(),
  ));
}
