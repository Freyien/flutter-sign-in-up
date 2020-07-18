import 'package:flutter/material.dart';
import 'package:flutter_ui_logins/pages/home_page.dart';
import 'package:flutter_ui_logins/theme.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => CustomTheme(),
    child: MyApp(),
  )
);

//red
//https://www.uplabs.com/posts/ios-login-sign-up-app-screen

//winter
//https://www.uplabs.com/posts/login-signup-ui-concept
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<CustomTheme>(context).currentTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: currentTheme,
      home: HomePage()
    );
  }
}