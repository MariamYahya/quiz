import 'package:flutter/material.dart';
import 'package:quiz/modules/home/widgets/cards_widget.dart';
import 'package:quiz/modules/home/widgets/custom_row_widget.dart';
import 'package:quiz/modules/home/widgets/feature_widget.dart';
import 'package:quiz/modules/home/widgets/feelings_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 20),
            Text(
              "Hello, ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            Text(
              "Sara Rose",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "How are your feeling today ?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: FeelingsWidget(
                      imagePath: "assets/images/love.png",
                      feelingTitle: "Love")),
              Expanded(
                  child: FeelingsWidget(
                      imagePath: "assets/images/cool.png",
                      feelingTitle: "Cool")),
              Expanded(
                  child: FeelingsWidget(
                      imagePath: "assets/images/happy.png",
                      feelingTitle: "Happy")),
              Expanded(
                  child: FeelingsWidget(
                      imagePath: "assets/images/sad.png", feelingTitle: "Sad")),
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomRowWidget(title: "Feature", buttonTitle: "See more", color: Color(0xFF027A48)),
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  FeatureWidget(),
          options: CarouselOptions(
            height: 200,
            // viewportFraction: 0.8,
            initialPage: 0,
            //enableInfiniteScroll: true,
            reverse: true,
            //autoPlay: true,
            //autoPlayInterval: Duration(seconds: 3),
            //autoPlayAnimationDuration: Duration(milliseconds: 800),
            //autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            // enlargeFactor: 2.0,
            //onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomRowWidget(title: "Exercise", buttonTitle: "See more", color: Color(0xFF027A48)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: CardsWidget(
                  color: Color(0xFFF9F5FF),
                  title: "Relaxation",
                  imagePath: "assets/images/relaxation.png",
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CardsWidget(
                  color: Color(0xFFFDF2FA),
                  title: "Meditation",
                  imagePath: "assets/images/meditation.png",
                ),
              ),
            ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: CardsWidget(
                  color: Color(0xFFFFFAF5),
                  title: "Beathing",
                  imagePath: "assets/images/beathing.png",
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CardsWidget(
                  color: Color(0xFFF0F9FF),
                  title: "Yoga",
                  imagePath: "assets/images/yoga.png",
                ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}
