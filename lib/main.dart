import 'package:flutter/material.dart';
import 'package:http/http.dart' show Client;

import 'package:testapp/src/app.dart';
import 'package:testapp/src/providers/app_provider.dart';

void main() => runApp(AppProvider(
      httpClient: Client(),
      child: MyApp(),
    ));
