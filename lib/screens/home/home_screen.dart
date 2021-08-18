import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Art.dart';
import 'package:portofolio_web_app/screens/home/components/ArtItem.dart';
import 'package:portofolio_web_app/screens/home/components/footer.dart';
import 'package:portofolio_web_app/screens/main/main_screen.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'components/art_banner.dart';
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
        ArtBanner(),
        MyArts(),
        Recomendations(),
        Footer(),
      ],
    );
  }
}

class MyArts extends StatelessWidget {
  const MyArts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultPadding),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Responsive(
            mobile: GridViewArt(
                crossAxisCount: 1,
                childAspectRatio: 1.3
            ),
            mobileLarge: GridViewArt(crossAxisCount: 1, childAspectRatio: 1.6,),
            tablet: GridViewArt(childAspectRatio: 1.5),
            desktop: GridViewArt(),
          ),
        ),
      ],
    );
  }
}

class GridViewArt extends StatelessWidget {
  const GridViewArt({
    Key? key, this.crossAxisCount = 2, this.childAspectRatio = 1.6,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: artsDesktop.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding * 5,
        mainAxisSpacing: Responsive.isMobileLarge(context) ? defaultPadding * 2 : defaultPadding * 4,
      ),
      itemBuilder: (context, index) => ArtItem(
        artDesk: artsDesktop[index],
        artMob: artsMobile[index],
      ),
    );
  }
}