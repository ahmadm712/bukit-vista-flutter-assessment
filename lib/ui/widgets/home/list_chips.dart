import 'package:flutter/material.dart';
import 'package:test_bukit_vista/ui/widgets/home/main_chip.dart';
import 'package:test_bukit_vista/utils/global_funtion.dart';

class MainChipsList extends StatefulWidget {
  const MainChipsList({
    super.key,
  });

  @override
  State<MainChipsList> createState() => _MainChipsListState();
}

class _MainChipsListState extends State<MainChipsList> {
  int selectedChipIndex = 1;

  onChangeIndex(int value) {
    setState(() {
      selectedChipIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 0.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            MainChip(
              chipTitle: 'Arrival',
              chipIndex: 0,
              selectedChipIndex: selectedChipIndex,
              onTap: () {
                onChangeIndex(0);
                showSnackbar(context: context, message: 'Coming soon :)');
              },
            ),
            MainChip(
              chipTitle: 'Stay Over',
              chipIndex: 1,
              selectedChipIndex: selectedChipIndex,
              onTap: () {
                onChangeIndex(1);
                showSnackbar(context: context, message: 'Coming soon :)');
              },
            ),
            MainChip(
              chipTitle: 'Departure',
              chipIndex: 2,
              selectedChipIndex: selectedChipIndex,
              onTap: () {
                onChangeIndex(2);
                showSnackbar(context: context, message: 'Coming soon :)');
              },
            ),
            MainChip(
              chipTitle: 'Cancelled',
              chipIndex: 3,
              selectedChipIndex: selectedChipIndex,
              onTap: () {
                onChangeIndex(3);
                showSnackbar(context: context, message: 'Coming soon :)');
              },
            ),
            MainChip(
              chipTitle: 'Show All',
              chipIndex: 4,
              selectedChipIndex: selectedChipIndex,
              onTap: () {
                onChangeIndex(4);
                showSnackbar(context: context, message: 'Coming soon :)');
              },
            ),
          ],
        ),
      ),
    );
  }
}
