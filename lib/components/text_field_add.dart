import 'package:flutter/material.dart';
import 'package:flutter_application_3/bloc_components/add_bloc.dart';

class TextFieldAdd extends StatelessWidget {
  const TextFieldAdd({
    Key? key,
    this.vilue,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final vilue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70, left: 40, right: 40),
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            offset: Offset(0, 12),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Add',
          hintStyle: TextStyle(
            color: Color.fromARGB(104, 75, 116, 79),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onChanged: (String vilue) => GroupFormWidgetModel().addlistcontent,
      ),
    );
  }
}
