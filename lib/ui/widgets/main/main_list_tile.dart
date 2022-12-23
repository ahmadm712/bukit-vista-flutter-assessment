import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainInformationTile extends StatelessWidget {
  const MainInformationTile({
    super.key,
    required this.columnsLeft,
    this.columnsMidlle,
    this.columnsRight,
  });

  final List<Widget> columnsLeft;
  final List<Widget>? columnsMidlle;
  final List<Widget>? columnsRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: columnsLeft,
          ),
          Column(
            children: columnsMidlle ?? [],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: columnsRight ?? [],
          ),
        ],
      ),
    );
  }

  factory MainInformationTile.columsOne({
    required String leftTitle,
    required String leftSubtitle,
    VoidCallback? onTap,
    Widget? icon,
    Color? color,
  }) {
    return MainInformationTile(
      columnsLeft: [
        BookingTitleText(title: leftTitle),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: onTap ?? () {},
          child: Row(
            children: [
              BookingSubtitleText(
                subtitle: leftSubtitle,
                color: color,
              ),
              const SizedBox(width: 6),
              icon ?? Container(),
            ],
          ),
        ),
      ],
    );
  }

  factory MainInformationTile.infoBookingDays({
    required DateTime checkInDate,
    required DateTime checkOutDate,
  }) {
    return MainInformationTile(
      columnsLeft: [
        const BookingTitleText(title: 'Check in'),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: DateFormat('HH:mm').format(
            checkInDate.toLocal(),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          DateFormat('MMM dd, yyyy').format(
            checkInDate.toLocal(),
          ),
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
      columnsMidlle: [
        const Icon(
          Icons.bedtime_outlined,
          color: Colors.black54,
        ),
        const SizedBox(height: 4),
        Text(
          '${checkOutDate.difference(checkInDate).inDays - 1} Nights',
          style: TextStyle(
            color: Colors.blue.shade700,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
      columnsRight: [
        const BookingTitleText(title: 'Check out'),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: DateFormat('HH:mm').format(
            checkOutDate.toLocal(),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          DateFormat('MMM dd, yyyy').format(
            checkOutDate.toLocal(),
          ),
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  factory MainInformationTile.columnsTwo({
    required String leftTitle,
    required String leftSubtitle,
    required String rightTitle,
    required String rightSubtitle,
    VoidCallback? onPressed,
    Widget? icon,
  }) {
    return MainInformationTile(
      columnsLeft: [
        BookingTitleText(title: leftTitle),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: onPressed ?? () {},
          child: Row(
            children: [
              BookingSubtitleText(
                subtitle: leftSubtitle,
              ),
              const SizedBox(width: 6),
              icon ?? Container(),
            ],
          ),
        ),
      ],
      columnsRight: [
        BookingTitleText(title: rightTitle),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: rightSubtitle,
        ),
      ],
    );
  }
}

class BookingTitleText extends StatelessWidget {
  const BookingTitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: Colors.black45, fontSize: 12),
    );
  }
}

class BookingSubtitleText extends StatelessWidget {
  const BookingSubtitleText({
    super.key,
    required this.subtitle,
    this.size = 12,
    this.color = Colors.black54,
  });

  final String subtitle;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
