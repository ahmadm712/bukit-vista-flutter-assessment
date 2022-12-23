import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.isReady,
  });

  final bool isReady;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        color: isReady ? Colors.amber.shade700 : Colors.green.shade800,
      ),
      child: Row(
        children: [
          Icon(
            isReady ? Icons.notifications_none_outlined : Icons.check_outlined,
            color: Colors.white,
            size: 14,
          ),
          const SizedBox(width: 4),
          Text(
            isReady ? 'CHECK ROOM READINESS' : 'READY',
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
