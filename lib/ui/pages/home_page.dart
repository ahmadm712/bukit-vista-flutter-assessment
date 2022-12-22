import 'package:flutter/material.dart';
import 'package:test_bukit_vista/ui/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MainAppBar(
          titleText: 'Booking',
          actionListWidget: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.question_mark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
