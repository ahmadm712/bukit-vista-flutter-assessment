import 'package:flutter/material.dart';
import 'package:test_bukit_vista/utils/global_funtion.dart';

class NewBookingsButton extends StatelessWidget {
  const NewBookingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        child: ElevatedButton(
            onPressed: () {
              showSnackbar(context: context, message: 'Comming soon :)');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.arrow_upward,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text('New Bookings'),
              ],
            )),
      ),
    );
  }
}
