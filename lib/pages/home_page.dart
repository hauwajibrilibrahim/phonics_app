import 'package:flutter/material.dart';
import 'package:phonics_app/pages/lessons_page.dart';
import 'package:phonics_app/pages/profile_page.dart';
import 'package:phonics_app/widgets/custom_tab_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [LessonsPage(), ProfilePage()],
      ),
      bottomNavigationBar: CustomBottomNavigation(tabController: tabController,),
    );
  }
}