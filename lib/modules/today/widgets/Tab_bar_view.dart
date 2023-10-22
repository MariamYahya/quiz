import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  final String numberOfDays;
  final String title;
  final String description;
  final String imagePath;

  const TabBarViewWidget({
    super.key,
    required this.numberOfDays,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFFEAECF5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 68,
                height: 36,
                decoration: BoxDecoration(
                  color: Color(0xFFFCFCFD),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  numberOfDays,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    size: 24,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "30 mins",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
          Image(image: AssetImage(imagePath)),
        ],
      ),
    );
  }
}
