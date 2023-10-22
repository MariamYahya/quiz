import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFECFDF3),
        borderRadius: BorderRadius.circular(16),
      ),
      height: 168,
      width: 326,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Positive vibes",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Boost your mood with\npositive vibes",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle,
                    size: 30,
                    color: Color(0xFF027A48),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "10 mins",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Image(
            image: AssetImage("assets/images/Walking the Dog.png"),
          ),
        ],
      ),
    );
  }
}
