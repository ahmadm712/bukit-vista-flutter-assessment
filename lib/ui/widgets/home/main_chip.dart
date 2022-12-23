import 'package:flutter/material.dart';
import 'package:test_bukit_vista/utils/styles.dart';

class MainChip extends StatelessWidget {
  const MainChip({
    super.key,
    required this.chipTitle,
    required this.chipIndex,
    required this.selectedChipIndex,
    required this.onTap,
  });

  final String chipTitle;
  final int chipIndex;
  final int selectedChipIndex;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool isActive;
    chipIndex == selectedChipIndex ? isActive = true : isActive = false;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
        decoration: BoxDecoration(
          border:
              Border.all(color: isActive ? Colors.transparent : kColorPrimary),
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
          color: isActive ? kColorPrimary : Colors.white,
        ),
        child: Text(
          chipTitle,
          style: TextStyle(
              color: isActive ? Colors.white : kColorPrimary,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
