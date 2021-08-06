import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio_web_app/constants.dart';
import 'package:portofolio_web_app/responsive.dart';
import 'package:portofolio_web_app/screens/main/components/skills.dart';

import 'coding.dart';
import 'information_text.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: Padding(
          padding: Responsive.isDesktop(context) ? const EdgeInsets.symmetric(vertical: defaultPadding) : const EdgeInsets.symmetric(vertical: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: Responsive.isDesktop(context) ? BorderRadius.circular(15) : BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF8A74FC),
                  const Color(0xFFB48AFF),
                ],
                begin: const FractionalOffset(0.0, 1.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Column (
              children: [
                MyInfo(),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(defaultPadding),
                    child: Column(
                      children: [
                        AreaInfoText(
                          title: "Residence :",
                          text: "Indonesia",
                        ),
                        AreaInfoText(
                          title: "City :",
                          text: "Tangerang",
                        ),
                        AreaInfoText(
                          title: "Age :",
                          text: "20",
                        ),
                        Skills(),
                        SizedBox(height: defaultPadding,),
                        Coding(),
                        Knowledges(),
                        Divider(),
                        SizedBox(height: defaultPadding / 2),
                        TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    "DOWNLOAD CV",
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                  SizedBox(width: defaultPadding / 2),
                                  SvgPicture.asset("assets/icons/download.svg", color: Colors.white,)
                                ],
                              ),
                            )
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.only(top: defaultPadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Spacer(flex: 4,),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("assets/icons/linkedin.svg", color: Color(0xFF8A74FC),),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("assets/icons/github.svg", color: Color(0xFF8A74FC)),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("assets/icons/twitter.svg", color: Color(0xFF8A74FC)),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("assets/icons/behance.svg", color: Color(0xFF8A74FC)),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("assets/icons/dribble.svg", color: Color(0xFF8A74FC)),
                              ),
                              Spacer(flex: 4,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}