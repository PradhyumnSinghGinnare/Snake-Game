import 'package:flutter/material.dart';

class ConstrainedScaffold extends StatelessWidget {

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  const ConstrainedScaffold({super.key, required this.body, this.backgroundColor, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
              maxWidth: 430,
              maxHeight: 600
          ),
          child: body,
        ),
      ),
    );
  }
}
