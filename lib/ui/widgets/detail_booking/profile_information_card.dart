import 'package:flutter/material.dart';
import 'package:test_bukit_vista/data/models/bookings_models.dart';

class ProfileInformationCard extends StatelessWidget {
  const ProfileInformationCard({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              profile.imageUrl!,
            ),
            backgroundColor: Colors.transparent,
            radius: 30,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profile.userName!,
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                profile.location!,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.green,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Repeater',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
