import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerHome extends StatelessWidget {
  const ShimmerHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              shimmerBlock(size),
              shimmerBlock(size),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => shimmerCard(size),
            itemCount: 8,
            shrinkWrap: true,
          )
        ],
      ),
    );
  }

  Container shimmerCard(Size size) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          shimmerImage(size),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              shimmerText(size.width * .61),
              shimmerText(size.width * .30),
              shimmerText(size.width * .35),
            ],
          )
        ],
      ),
    );
  }

  ClipRRect shimmerImage(Size size) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: size.width * .25,
        height: 70,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade400,
          child: Container(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }

  ClipRRect shimmerText(double width) {
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        width: width,
        height: 18,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade400,
          child: Container(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }

  ClipRRect shimmerBlock(Size size) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: size.width * .35,
        height: 80,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade400,
          child: Container(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
