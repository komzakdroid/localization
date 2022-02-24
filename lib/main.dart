import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/taskOne.dart';
import 'package:localization/taskTwo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale('en', 'US'),
      Locale('kr', 'KOR'),
      Locale('jp', 'JPN'),
      Locale('uz', 'UZ'),
      Locale('ru', 'RU'),
      Locale('fr', 'FRA'),
    ],
    path: 'assets/translations',
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskTwoPage(),
        routes: {
          TaskOnePage.id: (context) => TaskOnePage(),
          TaskTwoPage.id: (context) => TaskTwoPage(),
        });
  }
}
