import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_bukit_vista/data/models/bookings_models.dart';
import 'package:test_bukit_vista/ui/pages/detail_booking.dart';
import 'package:test_bukit_vista/ui/widgets/home/status_chip.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Booking data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailBookingPage.routeName,
          arguments: data,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.green.shade700,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      DateFormat('dd\nMMM')
                          .format(DateTime.parse(data.checkInDate!)),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.question_answer_outlined, size: 12),
                    const SizedBox(width: 4),
                    Text(
                      data.totalReview.toString(),
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StatusChip(isReady: true),
                const SizedBox(height: 8),
                Text(
                  data.roomType!,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data.unitName!,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        const VerticalDivider(
                          thickness: 5,
                        ),
                        const SizedBox(width: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Is the Room Ready for Booking arrival?',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 10,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'YES',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 4,
              ),
              color: Colors.white,
              child: const Icon(Icons.arrow_forward_ios_sharp),
            )
          ],
        ),
      ),
    );
  }
}
