import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';

import '../../../responsive.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isTablet(context) ? 1.37 : 0.9,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: Responsive.isDesktop(context) ? BorderRadius.circular(15) : BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
          gradient: LinearGradient(
            colors: [
              const Color(0xFFFEA117),
              const Color(0xFFFEBE1F),
            ],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: [
            Spacer(flex: 2,),
            GFAvatar(
              shape: GFAvatarShape.standard,
              borderRadius: BorderRadius.circular(15.0),
              radius: Responsive.isTablet(context) ? 50 : 80 ,
              backgroundImage: AssetImage('assets/images/PhotoProfile-01.jpg'),
            ),
            Spacer(),
            Text(
              "Andrio Effendi",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
                "Mobile Developer & Founder of \n Cheap Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Colors.white
                )
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}