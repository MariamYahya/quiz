import 'package:flutter/material.dart';
import 'package:quiz/modules/today/widgets/Tab_bar_view.dart';
import 'package:quiz/modules/today/widgets/health_widget.dart';
import 'package:quiz/modules/today/widgets/tab_bar_view_content_widget.dart';
import 'package:quiz/modules/today/widgets/tab_widget.dart';

class TodayView extends StatefulWidget {
  const TodayView({super.key});

  @override
  State<TodayView> createState() => _TodayViewState();
}

class _TodayViewState extends State<TodayView> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            //  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            width: mediaQuery.width,
            height: 82,
            decoration: BoxDecoration(
              color: Color(0xFFF8F9FC),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: HealthWidget(
                    imagePath: "assets/images/heart_rate.png",
                    title: "Heart Rate",
                    healthTitle: "81",
                    healthTitle2: "BPM",
                  ),
                ),
                VerticalDivider(
                  thickness: 1.2,
                  indent: 8,
                  endIndent: 8,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: HealthWidget(
                    imagePath: "assets/images/todo.png",
                    title: "To-do",
                    healthTitle: "32,5",
                    healthTitle2: "%",
                  ),
                ),
                VerticalDivider(
                  thickness: 1.2,
                  indent: 8,
                  endIndent: 8,
                ),
                Expanded(
                  child: HealthWidget(
                    imagePath: "assets/images/calo.png",
                    title: "Calo",
                    healthTitle: "1000",
                    healthTitle2: "cal",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
                child: Text(
                  "Workout Programs",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: TabBar(
                    controller: _tabController,
                    indicatorColor: Color(0xFF363F72),
                    unselectedLabelColor: Color(0xFF667085),
                    labelPadding: EdgeInsets.only(bottom: 10),
                    labelColor: Color(0xFF363F72),
                    padding: EdgeInsets.only(bottom: 19),
                    dividerColor: Colors.grey,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                    tabs: [
                      TabWidget(title: "All Types"),
                      TabWidget(title: "Full Body"),
                      TabWidget(title: "Upper"),
                      TabWidget(title: "Lower"),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                TabBarViewContentWidget(),
                TabBarViewContentWidget(),
                TabBarViewContentWidget(),
                TabBarViewContentWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
