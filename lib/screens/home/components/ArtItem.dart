import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_web_app/models/Art.dart';
import 'package:portofolio_web_app/responsive.dart';

import '../../../constants.dart';

class ArtItem extends StatelessWidget {
  const ArtItem({
    Key? key, required this.artDesk, required this.artMob
  }) : super(key: key);

  final ArtMob artMob;
  final ArtDesk artDesk;

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(seconds: 2),
      child: Responsive.isMobileLarge(context) ?
      artMob.isImage == false ?
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: Responsive.isDesktop(context) ? 150 : 130,
              height: Responsive.isDesktop(context) ? 54 : 44,
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
              child: Text(
                artMob.category!,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: Responsive.isDesktop(context) ? 18 : 14,
                  color: secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Spacer(flex: 1,),
            Text(
              artMob.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Responsive.isDesktop(context) ?
              Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: secondaryColor
              ) :
              Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: secondaryColor
              ),
            ),
            Spacer(flex: 1,),
            Text(
              artMob.description!,
              maxLines: Responsive.isDesktop(context) ? 3 : 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.5,
                color: bodyTextColor2,
                fontSize: Responsive.isDesktop(context) ? 16 : 14,
              ),
            ),
            Spacer(flex: 2,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(Size(130, 46)),
                  backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )
                  )
              ),
              child: Text(
                "Read More",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Responsive.isDesktop(context) ? 18 : 14),
              ),
            ),
          ],
        ),
      ) :
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(image: AssetImage(artMob.url!),fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ) :
      Responsive.isMobile(context) ?
      artMob.isImage == false ?
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: Responsive.isDesktop(context) ? 150 : 130,
              height: Responsive.isDesktop(context) ? 54 : 44,
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
              child: Text(
              artMob.category!,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: Responsive.isDesktop(context) ? 18 : 14,
                  color: secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Spacer(flex: 1,),
            Text(
              artMob.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Responsive.isDesktop(context) ?
              Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: secondaryColor
              ) :
              Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: secondaryColor
              ),
            ),
            Spacer(flex: 1,),
            Text(
              artMob.description!,
              maxLines: Responsive.isDesktop(context) ? 3 : 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.5,
                color: bodyTextColor2,
                fontSize: Responsive.isDesktop(context) ? 16 : 14,
              ),
            ),
            Spacer(flex: 2,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(Size(130, 46)),
                  backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )
                  )
              ),
              child: Text(
                "Read More",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Responsive.isDesktop(context) ? 18 : 14),
              ),
            ),
          ],
        ),
      ) :
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(image: AssetImage(artMob.url!),fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ) :
      artDesk.isImage == false ?
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: Responsive.isDesktop(context) ? 150 : 130,
              height: Responsive.isDesktop(context) ? 54 : 44,
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
              child: Text(
                artDesk.category!,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: Responsive.isDesktop(context) ? 18 : 14,
                  color: secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Spacer(flex: 1,),
            Text(
              artDesk.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Responsive.isDesktop(context) ?
              Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: secondaryColor
              ) :
              Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: secondaryColor
              ),
            ),
            Spacer(flex: 1,),
            Text(
              artDesk.description!,
              maxLines: Responsive.isDesktop(context) ? 3 : 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.5,
                color: bodyTextColor2,
                fontSize: Responsive.isDesktop(context) ? 16 : 14,
              ),
            ),
            Spacer(flex: 2,),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(
                          horizontal: Responsive.isDesktop(context) ? defaultPadding * 1.6 : defaultPadding * 1.5,
                          vertical: Responsive.isDesktop(context) ? defaultPadding * 1.1 : defaultPadding
                      )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )
                  )
              ),
              child: Text(
                "Read More",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Responsive.isDesktop(context) ? 18 : 14),
              ),
            ),
          ],
        ),
      ) :
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(image: AssetImage(artDesk.url!),fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}