import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bukit_vista/ui/cubit/booking/booking_cubit.dart';
import 'package:test_bukit_vista/ui/widgets/home/date_home_information.dart';
import 'package:test_bukit_vista/ui/widgets/home/item_card.dart';
import 'package:test_bukit_vista/ui/widgets/home/list_chips.dart';
import 'package:test_bukit_vista/ui/widgets/home/news_booking_button.dart';
import 'package:test_bukit_vista/ui/widgets/home/row_button.dart';
import 'package:test_bukit_vista/ui/widgets/home/shimmer_home.dart';
import 'package:test_bukit_vista/ui/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<BookingCubit>().getBooking();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MainBottomNavigationBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MainAppBar(
          titleText: 'Booking',
          isUseBackButton: false,
          actionListWidget: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.question_mark,
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          if (state is BookingLoading) {
            return const ShimmerHome();
          } else if (state is BookingHasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DateHomeInformation(),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const MainChipsList(),
                ),
                const SizedBox(
                  height: 2,
                ),
                const RowButton(),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.data.bookings!.length,
                  itemBuilder: (context, index) {
                    var data = state.data.bookings![index];
                    return ItemCard(data: data);
                  },
                ),
                const Spacer(),
                const NewBookingsButton(),
              ],
            );
          }

          return Container();
        },
      ),
    );
  }
}
