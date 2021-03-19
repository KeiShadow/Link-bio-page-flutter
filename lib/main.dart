import 'package:flutter/material.dart';
import 'package:keishadow_blog/AnimatedSwitch.dart';
import 'package:keishadow_blog/LinkList.dart';
import 'package:keishadow_blog/ProfileSection.dart';
import 'package:keishadow_blog/ThemeNotifier.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, child) => MaterialApp(
            theme: theme.getTheme()!,
            home: Scaffold(
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0, top: 40),
                        child: AnimatedSwitch(theme: theme),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: ProfileSection(),
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: 300,
                                child: LinkList())
                          ],
                        )),
                  ),
                ],
              ),
            )));
  }
}
