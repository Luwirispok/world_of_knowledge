import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:world_of_knowledge/core/app_color.dart';

import 'package:world_of_knowledge/quiz/getQuestions/custom_card.dart';
import 'package:world_of_knowledge/quiz/getQuestions/float_action_button.dart';
import 'package:world_of_knowledge/quiz/getQuestions/question_widget.dart';
import 'package:world_of_knowledge/quiz/models/model.dart';

class MainWidget extends StatefulWidget {
  final List<QuizQuestion> data;
  final String name;
  MainWidget({required this.data, required this.name, super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  get data => widget.data;
  get name => widget.name;
  // List<QuizQuestion> data = [
  //   QuizQuestion(
  //     title: 'Сколько будет \n1 + 1',
  //     options: {
  //       '>1 года': false,
  //       '<1 года': false,
  //       '<2 лет': false,
  //       '4 лет': false,
  //       '4+ лет': true,
  //     },
  //   ),
  //   QuizQuestion(
  //     title: 'Сколько будет \n 3 - 1?',
  //     options: {
  //       '1': false,
  //       '2': true,
  //       '3': false,
  //       '4': false,
  //       '5 и более вопросов': false,
  //     },
  //   ),
  //   QuizQuestion(
  //     title: 'Главное в людях для сотрудника 3?',
  //     options: {
  //       'Ум и Креативность': true,
  //       'Добрата и честность': false,
  //       'Красота здоровье': false,
  //       'Власть и богатство': false,
  //       'Смелость и упорство': false,
  //       'Юмор и жизнелюбие': false,
  //     },
  //   ),
  //   QuizQuestion(
  //     title: 'Любимый фильм сотрудника 4?',
  //     options: {
  //       'Интерстелларр': true,
  //       'Богемская рапсодия': false,
  //       'Война бесконечности': false,
  //       'Начало': false,
  //       'Зелёная Миля': false,
  //       'Форест Гамп': false,
  //       'Назад в будущее': false,
  //       'Властелин Колец': false,
  //       'Темный рыцарь': false,
  //       'Побег из Шоушенка': false,
  //       'Остров проклятых': false,
  //       'Джентельмены': false,
  //       'Титаник': false,
  //       'Ходячий замок': false,
  //       'Леон': false,
  //       'Назад в будущее': false,
  //       'Матрица': false,
  //       'Пианист': false,
  //       'Ваш ответ?': false,
  //     },
  //   ),
  //   QuizQuestion(
  //     title: 'Любимая игра у сотрудник name 5?',
  //     options: {
  //       'Тетрис': false,
  //       'Шахматы': true,
  //       'Apex': false,
  //       'Dota': false,
  //       'God of War': false,
  //       'Клуб романтики': false,
  //       'Симс': false,
  //       'PUBG': false,
  //       'Skyrim': false,
  //       'GTA': false,
  //       'Minecraft': false,
  //       'Assassin Creed': false,
  //       'Watch Dogs': false,
  //       'War zone': false,
  //       'Far Cry': false,
  //       'Dishonored': false,
  //       'Halo': false,
  //       'Battlefield': false,
  //       'Overwatch': false,
  //       'Ваш ответ?': false,
  //     },
  //   ),
  // ];

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
        setState(() {
          isPressed = true;
          isAlreadySelected = true;
        });
      } else {
        setState(() {
          isPressed = true;
          isAlreadySelected = true;
        });
      }
    }
  }

  void next() {
    if (index == (data.length - 1)) {
      Navigator.pop(context);
    }
    if (index == data.length - 1) {
      return;
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Пожалуйста выберите ответ'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
    ;
  }

  int index = 0;
  bool isPressed = false;
  int score = 0;
  bool isAlreadySelected = false;
  final correct = Colors.green;
  final incorrect = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 420,
            child: Stack(children: [
              Positioned(
                right: 0,
                bottom: 10,
                top: 10,
                child: QuestionWidget(
                  indexAction: index,
                  question: data[index].title,
                  totalQuestions: data.length,
                  score: score,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 10,
                top: 10,
                child: SvgPicture.asset(
                  'images/planets/persons/$name.svg',
                  width: 150,
                ),
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.height * 0.6,
            height: MediaQuery.of(context).size.height * 0.95,
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int sepIndex) {
                  return GestureDetector(
                    onTap: () async {
                      checkAnswerAndUpdate(
                          data[index].options.values.toList()[sepIndex]);
                      await Future.delayed(Duration(seconds: 3));
                      next();
                    },
                    child: CustomCardWidget(
                      option: data[index].options.keys.toList()[sepIndex],
                      color: isPressed
                          ? data[index].options.values.toList()[sepIndex] ==
                                  true
                              ? correct
                              : incorrect
                          : AppColors.blue,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int sepBuildIndex) {
                  return SizedBox(
                    height: 2,
                  );
                },
                itemCount: data[index].options.keys.toList().length),
          ),
        ],
      ),
    );
  }
}
