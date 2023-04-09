import 'package:flutter/material.dart';
import 'package:markdown_viewer/markdown_viewer.dart';

class MarkdownText extends StatelessWidget {
  MarkdownText({super.key, required data, this.onTapLink}) {
    _data = data;
  }

  late final String? _data;
  final void Function(String? href, String? title)? onTapLink;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
      child: MarkdownViewer(
        _data ?? '',
        styleSheet: const MarkdownStyle(textStyle: TextStyle(fontSize: 16)),
        onTapLink: onTapLink,
      ),
    );
  }
}

// https://github.github.com/gfm/
// https://markdown-it.github.io/