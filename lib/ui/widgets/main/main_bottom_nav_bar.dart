import 'package:flutter/material.dart';
import 'package:test_bukit_vista/utils/global_funtion.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        if (value != 1) {
          showSnackbar(context: context, message: 'Comming soon :)');
        }
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'My Property'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
            ),
            label: 'Booking'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
            ),
            label: 'Accounting'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile'),
      ],
    );
  }
}
