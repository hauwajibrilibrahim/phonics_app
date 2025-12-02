import 'package:flutter/material.dart';
import 'package:phonics_app/models/phonics_character.dart';

class LessonItemPage extends StatefulWidget {
  const LessonItemPage({super.key, required this.phonicsCharacter, required this.color});
  final PhonicsCharacter phonicsCharacter;
  final Color color;
  @override
  State<LessonItemPage> createState() => _LessonItemPageState();
}

class _LessonItemPageState extends State<LessonItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson Item"),
      ),
    );
  }
}