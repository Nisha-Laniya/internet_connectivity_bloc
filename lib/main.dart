import 'package:flutter/material.dart';
import 'package:internet_connectivity_bloc/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/internet_blocs/internet_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage()
      )
    );
  }
}

