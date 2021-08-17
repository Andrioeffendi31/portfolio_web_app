import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Project.dart';
import 'package:portofolio_web_app/responsive.dart';

import '../../../constants.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    Key? key, required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(seconds: 2),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w600,
                color: secondaryColor
              ),
            ),
            Spacer(),
            Text(
              project.description!,
              maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.5,
                color: bodyTextColor2,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "Read More >",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}