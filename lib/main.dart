import 'package:flutter/material.dart';
import 'package:flutter_application_3/bloc_components/add_bloc.dart';
import 'package:flutter_application_3/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  List get initialState => List.empty();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AddBloc(initialState),
        child: HomePage(),
      ),
    );
  }
}
