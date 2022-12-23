import 'package:flutter/material.dart';
import 'package:test_bukit_vista/utils/constans.dart';

class DateHomeInformation extends StatelessWidget {
  const DateHomeInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          dateInfoComponent(infoStartDate, starDate),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 14,
          ),
          dateInfoComponent(infoStartDate, endDate),
        ],
      ),
    );
  }

  Column dateInfoComponent(String info, String date) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          info,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        Text(
          date,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
