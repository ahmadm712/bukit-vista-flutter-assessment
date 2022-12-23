import 'package:flutter/material.dart';

class RowButton extends StatelessWidget {
  const RowButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTap ?? () {},
            child: const Text(
              'Earlier',
              style: TextStyle(color: Colors.black45),
            ),
          ),
          InkWell(
            onTap: onTap ?? () {},
            child: Text(
              'Refresh',
              style: TextStyle(color: Colors.amber.shade700),
            ),
          ),
        ],
      ),
    );
  }
}
