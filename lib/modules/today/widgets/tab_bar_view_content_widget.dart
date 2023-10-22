import 'package:flutter/material.dart';

import 'Tab_bar_view.dart';

class TabBarViewContentWidget extends StatelessWidget {
  const TabBarViewContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBarViewWidget(
          numberOfDays: "7 Days",
          title: "Morning Yoga",
          description: "Improve mental focus",
          imagePath: "assets/images/morning_yoga.png",
        ),
        SizedBox(height: 40),
        TabBarViewWidget(
          numberOfDays: "3 Days",
          title: "Plank Exercise",
          description: "Improve posture and stability",
          imagePath: "assets/images/plank.png",
        ),
      ],
    );
  }
}
