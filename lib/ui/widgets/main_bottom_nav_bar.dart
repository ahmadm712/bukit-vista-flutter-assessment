import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
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
