import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_web_app/constants.dart';
import 'package:portofolio_web_app/responsive.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null :
      AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Color(0xFF8A74FC)),
          ),
        ),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Padding(
          padding: Responsive.isDesktop(context) ? const EdgeInsets.symmetric(horizontal: 16.0) : const EdgeInsets.symmetric(horizontal: 0.0),
          child: Container(
            constraints: BoxConstraints(maxWidth: 1620),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                Expanded(
                  //take (2+7 = 9) so 2/9 = 0.22 means 22%
                  flex: 3,
                  child: DelayedDisplay(
                      delay: Duration(seconds: 1),
                      child: SideMenu()
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  //take (7/9 = 0.78) means 78%
                  flex: 11,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(right: defaultPadding / 2, top: defaultPadding),
                    physics: BouncingScrollPhysics(),
                    child: DelayedDisplay(
                      delay: Duration(seconds: 1),
                      child: Column(
                        children: [
                          ...children,
                          //footer
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: defaultPadding / 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}