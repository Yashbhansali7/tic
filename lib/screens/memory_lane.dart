import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';
import 'package:socialchutney/utils/app_drawer.dart';
import 'package:socialchutney/utils/app_footer.dart';

class MemoryLaneScreen extends StatelessWidget {
  static const routeName = "/memory-lane";

  const MemoryLaneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      drawer: const AppDrawer(),
      appBar: AppBar(backgroundColor: AppColors.lightBlue),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: ImageContainer(height: 180, child: SizedBox())),
                    SizedBox(width: 16),
                    Expanded(
                        child: ImageContainer(height: 180, child: SizedBox()))
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                        child: ImageContainer(height: 180, child: SizedBox())),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                        child: ImageContainer(height: 376, child: SizedBox())),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        children: [
                          ImageContainer(height: 180, child: SizedBox()),
                          SizedBox(height: 16),
                          ImageContainer(height: 180, child: SizedBox()),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const AppFooter()
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final double height;
  final Widget child;
  const ImageContainer({super.key, required this.height, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.grey),
    );
  }
}
