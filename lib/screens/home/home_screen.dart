import 'package:flutter/material.dart';
import 'package:portofolio_web_app/screens/main/main_screen.dart';

import 'components/highlight_info.dart';
import 'components/home_screen_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeScreenBanner(),
        HighLightInfo(),
        MyProjects(),
        Recomendations(),
      ],
    );
  }
}