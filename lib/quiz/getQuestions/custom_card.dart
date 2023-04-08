import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:world_of_knowledge/core/app_color.dart';

class CustomCardWidget extends StatelessWidget {
  final String option;

  final Color color;

  CustomCardWidget({
    super.key,
    required this.option,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Card(
          color: color,
          child: ListTile(
            title: Text(
              textDirection: TextDirection.ltr,
              option,
              style: TextStyle(
                fontSize: 25,
                color: AppColors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
