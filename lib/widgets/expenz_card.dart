import 'package:expenz_application/constants/colors.dart';
import 'package:expenz_application/constants/constats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ExpenzCard extends StatefulWidget {
  final String title;
  final double amount;
  final String imageUrl;
  final Color bgColor;
  const ExpenzCard({
    super.key,
    required this.title,
    required this.amount,
    required this.imageUrl,
    required this.bgColor,
  });

  @override
  State<ExpenzCard> createState() => _ExpenzCardState();
}

class _ExpenzCardState extends State<ExpenzCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          color: widget.bgColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultpadding),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Image.asset(
                  widget.imageUrl,
                  width: 70,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 17,
                    color: kWhite,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "\$${widget.amount.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: kWhite,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
