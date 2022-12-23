import 'package:flutter/material.dart';
import 'package:test_bukit_vista/ui/widgets/detail_booking/dialog_buttons.dart';
import 'package:test_bukit_vista/utils/styles.dart';

class GuestJourneyTabView extends StatelessWidget {
  const GuestJourneyTabView({
    super.key,
    required this.guestJourney,
  });

  final List<String> guestJourney;

  @override
  Widget build(BuildContext context) {
    if (guestJourney.isEmpty) {
      return Container(
        color: Colors.grey.shade200,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.content_paste_off_outlined,
                    size: 70,
                  ),
                  Text(
                    'Nothing Happpening Now',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'We will let you know',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.add_circle_rounded,
                    color: kColorPrimary,
                    size: 80,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const DialogButtons();
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
