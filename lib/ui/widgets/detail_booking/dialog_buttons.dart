import 'package:flutter/material.dart';
import 'package:test_bukit_vista/utils/styles.dart';

class DialogButtons extends StatelessWidget {
  const DialogButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.white.withOpacity(0.9),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * .68,
                left: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    ButtonShowDialog(
                      buttonTitle: 'Update Status',
                      icon: Icons.data_thresholding_outlined,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonShowDialog(
                      buttonTitle: 'Add Notes',
                      icon: Icons.data_thresholding_outlined,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonShowDialog extends StatelessWidget {
  const ButtonShowDialog({
    Key? key,
    required this.buttonTitle,
    required this.icon,
  }) : super(key: key);
  final String buttonTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(buttonTitle),
        InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 14),
              decoration: const BoxDecoration(
                  color: kColorPrimary, shape: BoxShape.circle),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
