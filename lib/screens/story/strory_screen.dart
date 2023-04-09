import 'package:flutter/material.dart';
import 'package:world_of_knowledge/quiz/models/story.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key, required this.storyModel}) : super(key: key);

  final StoryModel storyModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          storyModel.name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
