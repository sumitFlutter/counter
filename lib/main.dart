
import 'package:counter_advanced/screen/home/provider/home_provider.dart';
import 'package:counter_advanced/screen/home/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(

    providers: [
      ChangeNotifierProvider(create: (context) => Provider1(),)
    ],
    child: MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routes: {
        "/":(context) => const HomeScreen(),
      },
      themeMode: ThemeMode.dark,
    ),
  ),
  );
}