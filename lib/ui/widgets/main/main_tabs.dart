import 'package:flutter/material.dart';

class MainTabs extends StatelessWidget {
  final String tabTitle;
  const MainTabs({Key? key, required this.tabTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        tabTitle,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
