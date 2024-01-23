import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';
import 'package:socialchutney/screens/home.dart';

import '../screens/contact_us.dart';
import '../screens/memory_lane.dart';
import '../screens/register.dart';
import '../screens/team.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  static const List<Map> menuItemList = [
    {"name": "Home", "page": HomeScreen.routeName},
    {"name": "Team", "page": TeamScreen.routeName},
    {"name": "Memory Lane", "page": MemoryLaneScreen.routeName},
    {"name": "Contact Us", "page": ContactUsScreen.routeName},
    {"name": "Register", "page": RegisterScreen.routeName},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const FlutterLogo(),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 36,
                      color: AppColors.darkBlue,
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 3, color: AppColors.darkBlue)),
              child: ListView.builder(
                  itemCount: menuItemList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: InkWell(
                        onTap: () {
                          if (menuItemList[index]["page"] !=
                              ModalRoute.of(context)!.settings.name) {
                            Navigator.of(context)
                                .popAndPushNamed(menuItemList[index]["page"]);
                          }
                        },
                        child: Text(
                          menuItemList[index]["name"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: menuItemList[index]["page"] !=
                                      ModalRoute.of(context)!.settings.name
                                  ? AppColors.white
                                  : AppColors.darkBlue,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(),
                  FlutterLogo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
