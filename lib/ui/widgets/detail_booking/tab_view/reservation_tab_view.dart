import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_bukit_vista/data/models/bookings_models.dart';
import 'package:test_bukit_vista/services/main_services.dart';
import 'package:test_bukit_vista/ui/widgets/main/main_list_tile.dart';
import 'package:test_bukit_vista/utils/global_funtion.dart';

class ReservationTabView extends StatelessWidget {
  const ReservationTabView({
    super.key,
    this.booking,
  });

  final Booking? booking;
  @override
  Widget build(BuildContext context) {
    final MainServices services = MainServices();

    return Container(
      color: Colors.grey.shade200,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainInformationTile.infoBookingDays(
                  checkInDate: DateTime.parse(booking!.checkInDate!),
                  checkOutDate: DateTime.parse(booking!.checkOutDate!),
                ),
                const Divider(height: 6, thickness: 1),
                MainInformationTile.columnsTwo(
                  leftTitle: 'Booking ID',
                  leftSubtitle: booking!.id!.toUpperCase(),
                  icon: const Icon(
                    Icons.copy,
                    size: 14,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(text: booking!.id!.toUpperCase()),
                    ).then((_) {
                      showSnackbar(
                          context: context,
                          message: 'Booking ID copied to clipboard');
                    });
                  },
                  rightTitle: 'Booking Status',
                  rightSubtitle: booking!.bookingStatus!,
                ),
                MainInformationTile.columnsTwo(
                  leftTitle: 'Number of guest',
                  leftSubtitle: booking!.totalGuest.toString(),
                  rightTitle: 'Booking value',
                  rightSubtitle:
                      services.convertToIdr(booking!.bookingValue, 2),
                ),
                MainInformationTile.columsOne(
                  leftTitle: 'Phone Number',
                  color: Colors.black54,
                  leftSubtitle: booking!.profileModel!.phoneNumber!,
                  icon: const Icon(
                    Icons.phone_enabled_outlined,
                    size: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: const BookingSubtitleText(
              subtitle: 'Hosting Detail',
              size: 14,
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                MainInformationTile.columsOne(
                  leftTitle: 'Host',
                  color: Colors.black54,
                  leftSubtitle: booking!.hostModel!.hostName!,
                ),
                MainInformationTile.columsOne(
                  leftTitle: 'Profile name',
                  color: Colors.black54,
                  leftSubtitle: booking!.hostModel!.hostProfileName!,
                ),
                MainInformationTile.columsOne(
                  leftTitle: 'Property unit',
                  color: Colors.black54,
                  leftSubtitle: booking!.hostModel!.hostPropertyUnit!,
                ),
                MainInformationTile.columsOne(
                  leftTitle: 'Listing Name',
                  leftSubtitle: booking!.hostModel!.listingName!,
                  color: Colors.amber.shade700,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
