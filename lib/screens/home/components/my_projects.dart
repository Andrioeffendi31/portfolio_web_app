import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Project.dart';
import 'package:portofolio_web_app/responsive.dart';
import 'package:portofolio_web_app/screens/home/components/project_item.dart';

import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Container(
            alignment: Alignment.center,
            width: maxWidth,
            height: Responsive.isMobileLarge(context) ? 54 : 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              "My Projects",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
            mobile: GridViewInfo(
                crossAxisCount: 1,
                childAspectRatio: 1.3
            ),
            mobileLarge: GridViewInfo(crossAxisCount: 2, childAspectRatio: 0.9,),
            tablet: GridViewInfo(childAspectRatio: 0.8),
            desktop: GridViewInfo(),
        ),
      ],
    );
  }
}

class GridViewInfo extends StatelessWidget {
  const GridViewInfo({
    Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1.2,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectItem(
        project: demo_projects[index],
      ),
    );
  }
}