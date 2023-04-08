import 'package:flutter/material.dart';
import 'package:world_of_knowledge/quiz/getQuestions/question_widget.dart';
import 'package:world_of_knowledge/quiz/models/model.dart';

class DataModelProvider extends ChangeNotifier {
  String? personalTypeName;
  String? pathBackGroundImage;
  String? planetPathPhoto;
  List<QuizQuestion>? data;
}
