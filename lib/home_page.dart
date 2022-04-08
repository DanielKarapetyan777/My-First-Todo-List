import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/center_buttons.dart';
import 'components/text_field_add.dart';
import 'components/todo_list.dart';
import 'components/top_empty_space.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 168, 119),
        title: const Text(
          'Todo List',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          SizedBox(
            child: Column(
              children: const [TopEmptySpace(), SenterButtons(), TodoList()],
            ),
          ),
          const TextFieldAdd(),
        ],
      ),
    );
  }
}
