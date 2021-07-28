import 'package:flutter/material.dart';
import 'package:portofolio_web_app/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                //take (2+7 = 9) so 2/9 = 0.22 means 22%
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                //take (7/9 = 0.78) means 78%
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}