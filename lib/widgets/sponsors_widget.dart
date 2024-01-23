import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';

const List<Map> sponserItems = [
  {
    "title": "Sponsor Name",
    "description":
        "By subscribing to TSC, you get access to a dedicated creative team, including a project manager, design director, and a modular team of creatives to meet the unique needs of your projects. No more chasing deadlines or designers with our fully-managed service.",
  },
  {
    "title": "Sponsor Name",
    "description":
        "By subscribing to TSC, you get access to a dedicated creative team, including a project manager, design director, and a modular team of creatives to meet the unique needs of your projects. No more chasing deadlines or designers with our fully-managed service.",
  },
  {
    "title": "Sponsor Name",
    "description":
        "By subscribing to TSC, you get access to a dedicated creative team, including a project manager, design director, and a modular team of creatives to meet the unique needs of your projects. No more chasing deadlines or designers with our fully-managed service.",
  }
];

class SponsorsWidget extends StatefulWidget {
  const SponsorsWidget({super.key});

  @override
  State<SponsorsWidget> createState() => _SponsorsWidgetState();
}

class _SponsorsWidgetState extends State<SponsorsWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.yellow,
                border: Border.all(color: AppColors.black, width: 1.5),
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: AppColors.pink,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Become a sponser of event",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          height: 1,
                          fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pink),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            height: 1,
                            fontWeight: FontWeight.w600),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 240,
            child: PageView.builder(
              onPageChanged: (v) {
                setState(() {
                  currentIndex = v;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: sponserItems.length,
              itemBuilder: (context, index) {
                return SponsorCard(
                  title: sponserItems[index]["title"],
                  description: sponserItems[index]["description"],
                );
              },
            ),
          ),
          SizedBox(height: 20),
          SponsorDotIndicator(currentIndex: currentIndex)
        ]));
  }
}

class SponsorCard extends StatelessWidget {
  final String title;
  final String description;
  const SponsorCard(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
          color: AppColors.pink,
          border: Border.all(color: AppColors.black, width: 1.5),
          borderRadius: BorderRadius.circular(8)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sponsor Name",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  height: 1,
                  fontWeight: FontWeight.w700)),
          SizedBox(height: 16),
          Text(
              "By subscribing to TSC, you get access to a dedicated creative team, including a project manager, design director, and a modular team of creatives to meet the unique needs of your projects. No more chasing deadlines or designers with our fully-managed service.",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class SponsorDotIndicator extends StatelessWidget {
  final int currentIndex;

  const SponsorDotIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 5, bottom: 10, left: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == i
                      ? AppColors.lightBlue
                      : AppColors.white),
              height: 8,
              width: currentIndex == i ? 16 : 8,
            );
          },
          itemCount: sponserItems.length,
        ),
      ),
    );
  }
}
