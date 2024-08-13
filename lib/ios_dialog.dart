import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoBlurDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final List<Widget> actions;

  const CupertinoBlurDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBlurBackground(),
        _buildDialog(),
      ],
    );
  }

  Widget _buildBlurBackground() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        color: Colors.black.withOpacity(0.5),
      ),
    );
  }

  Widget _buildDialog() {
    return Center(
      child: CupertinoAlertDialog(
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }
}

void showCupertinoBlurDialog({
  required BuildContext context,
  required Widget title,
  required Widget content,
  List<Widget> actions = const [],
}) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoBlurDialog(
        title: title,
        content: content,
        actions: actions,
      );
    },
  );
}
