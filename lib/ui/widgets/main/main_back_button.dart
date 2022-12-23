import 'package:flutter/material.dart';

class MainBackButton extends StatelessWidget {
  const MainBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: IconButton(
        color: Colors.white,
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: (() {
          Navigator.pop(context);
        }),
      ),
    );
  }
}
