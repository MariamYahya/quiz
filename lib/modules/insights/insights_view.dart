import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz/modules/home/widgets/custom_row_widget.dart';
import 'package:quiz/modules/insights/widgets/chip_widget.dart';

class InsightsView extends StatelessWidget {
  const InsightsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: mediaQuery.width,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFFD0D5DD), width: 1)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 28,
                  color: Color(0xFF667085),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Artical, Video, Audio and More,...",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ChipWidget(
                  label: "Discover",
                  backgroundColor: Color(0xFFF4EBFF),
                  labelColor: Color(0xFF6941C6),
                  borderColor: Color(0xFFD6BBFB),
                ),
                SizedBox(width: 5),
                ChipWidget(
                  label: "News",
                  backgroundColor: Colors.white,
                  labelColor: Color(0xFF667085),
                  borderColor: Color(0xFFE4E7EC),
                ),
                SizedBox(width: 5),
                ChipWidget(
                  label: "Most Viewed",
                  backgroundColor: Colors.white,
                  labelColor: Color(0xFF667085),
                  borderColor: Color(0xFFE4E7EC),
                ),
                SizedBox(width: 5),
                ChipWidget(
                  label: "Saved",
                  backgroundColor: Colors.white,
                  labelColor: Color(0xFF667085),
                  borderColor: Color(0xFFE4E7EC),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomRowWidget(
              title: "Hot topics",
              buttonTitle: "See all",
              color: Color(0xFF5925DC)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset("assets/images/self_care.png"),
                SizedBox(width: 5),
                Image.asset("assets/images/cycle.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Get Tips",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 196,
            decoration: BoxDecoration(
                color: Color(0xFFF2F4F7),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFE4E7EC), width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Doctor.png"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Connect with doctors &\nget suggestions",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Connect now and get\nexpert insights",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "View Details",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600,color: Colors.white),
                      ),
                      color: Color(0xFF7F56D9),
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomRowWidget(title: "Cycle Phases and Period", buttonTitle: "See all", color: Color(0xFF7F56D9))
        ],
      ),
    );
  }
}
