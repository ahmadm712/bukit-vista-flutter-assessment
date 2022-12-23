import 'package:flutter/material.dart';
import 'package:test_bukit_vista/ui/widgets/main/main_back_button.dart';
import 'package:test_bukit_vista/utils/styles.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar(
      {Key? key,
      required this.titleText,
      required this.actionListWidget,
      this.isUseBackButton = false})
      : super(key: key);
  final String titleText;
  final bool isUseBackButton;
  final List<Widget> actionListWidget;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      leading: isUseBackButton ? const MainBackButton() : null,
      elevation: 0,
      centerTitle: true,
      actions: actionListWidget.isNotEmpty ? actionListWidget : null,
      backgroundColor: kColorPrimary,
    );
  }
}
