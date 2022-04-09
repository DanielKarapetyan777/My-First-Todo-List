import 'dart:html';

import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 100, 168, 119),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) => SizedBox(
            child: ListTile(
              leading: Text(
                index.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          separatorBuilder: (_, __) => const Divider(
            color: Color.fromARGB(110, 0, 0, 0),
            thickness: 5,
          ),
        ),
      ),
    );
  }
}
