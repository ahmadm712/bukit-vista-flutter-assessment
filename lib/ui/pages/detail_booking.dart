import 'package:flutter/material.dart';
import 'package:test_bukit_vista/data/models/bookings_models.dart';
import 'package:test_bukit_vista/ui/widgets/detail_booking/tab_view/guest_journey_tab_view.dart';
import 'package:test_bukit_vista/ui/widgets/detail_booking/profile_information_card.dart';
import 'package:test_bukit_vista/ui/widgets/detail_booking/tab_view/reservation_tab_view.dart';
import 'package:test_bukit_vista/ui/widgets/main/main_app_bar.dart';
import 'package:test_bukit_vista/ui/widgets/main/main_bottom_nav_bar.dart';
import 'package:test_bukit_vista/utils/constans.dart';
import 'package:test_bukit_vista/utils/styles.dart';

class DetailBookingPage extends StatefulWidget {
  const DetailBookingPage({super.key, required this.booking});
  final Booking booking;
  static const String routeName = '/detail-booking';

  @override
  State<DetailBookingPage> createState() => _DetailBookingPageState();
}

class _DetailBookingPageState extends State<DetailBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MainAppBar(
          titleText: 'Booking',
          isUseBackButton: true,
          actionListWidget: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.question_mark_rounded,
              ),
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            ProfileInformationCard(
              profile: widget.booking.profileModel!,
            ),
            const Divider(height: 2, thickness: 1),
            Container(
              color: Colors.white,
              child: const TabBar(
                isScrollable: false,
                indicatorColor: kColorPrimary,
                tabs: tabs,
                labelColor: kColorPrimary,
                unselectedLabelColor: Colors.black54,
              ),
            ),
            const Divider(height: 2, thickness: 1),
            Expanded(
                child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                GuestJourneyTabView(
                    guestJourney: widget.booking.profileModel!.journeyStatus!),
                ReservationTabView(booking: widget.booking)
              ],
            )),
          ],
        ),
      ),
    );
  }
}
