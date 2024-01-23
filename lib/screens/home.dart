import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';

import '../utils/app_drawer.dart';
import '../utils/app_footer.dart';
import '../utils/content_container.dart';
import '../utils/headings_container.dart';
import '../widgets/founders_widget.dart';
import '../widgets/registration_widget.dart';
import '../widgets/sponsors_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Map> entertainmentList = [
    {
      "desc":
          "Savour 20+ culinary delights from around the world and delight your taste buds.",
      "image": "assets/images/Artboard 1.png"
    },
    {
      "desc":
          "Elevate your influence among Rajasthan's elite and network with the best in the business.",
      "image": "assets/images/Artboard 2.png"
    },
    {
      "desc":
          "Experience the therapeutic power of rhythms and let the beats energize your soul.",
      "image": "assets/images/Artboard 3.png"
    },
    {
      "desc":
          "Dress up as your favourite character and step into a world of imagination and fun.",
      "image": "assets/images/Artboard 4.png"
    },
    {
      "desc":
          "Get your hilarious caricature drawn and take home a unique keepsake.",
      "image": "assets/images/Artboard 5.png"
    },
    // {"desc": "", "image": "assets/images/Artboard 6.png"},
    {
      "desc":
          "Dive into a world of entertainment - music, poetry, comedy, and more, guaranteed to keep you enthralled!",
      "image": "assets/images/Artboard 7.png"
    },
    {
      "desc":
          "Connect with fellow dog lovers and their pups for a tail-wagging good time.",
      "image": "assets/images/Artboard 8.png"
    },
    {
      "desc":
          "Find Love in a Flash! - Meet new people, make connections, and maybe even find your match!",
      "image": "assets/images/Artboard 9.png"
    },
    {
      "desc":
          "Conversations in the Dark! - Engage in intriguing conversations with strangers, all while blindfolded for a unique twist on socializing.",
      "image": "assets/images/Artboard 10.png"
    },
    {
      "desc":
          "Illuminate the night, set negativity free, and watch your dreams take flight.",
      "image": "assets/images/Artboard 11.png"
    },
    {
      "desc":
          "Dress up with the amazing street collection and wear the new-genz way!",
      "image": "assets/images/Artboard 12.png"
    },
    {
      "desc":
          "Dance your heart out and learn this extraordinary dance form with us.",
      "image": "assets/images/Artboard 13.png"
    },
  ];

  static const List<String> corporateList = [
    "assets/images/Artboard 14.png",
    "assets/images/Artboard 15.png",
    "assets/images/Artboard 16.png",
    "assets/images/Artboard 17.png",
    "assets/images/Artboard 18.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppDrawer(),
        backgroundColor: AppColors.darkBlue,
        appBar: AppBar(backgroundColor: AppColors.lightBlue),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1.3,
                color: AppColors.darkBlue,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: AppColors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset(
                                  height:
                                      MediaQuery.of(context).size.height * .1,
                                  width:
                                      MediaQuery.of(context).size.width * .18,
                                  'assets/images/jito_logo_circle.png'),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.asset(
                                    'assets/images/connect_logo.png',
                                    height: MediaQuery.of(context).size.height *
                                        .05,
                                    width:
                                        MediaQuery.of(context).size.width * .18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .01,
                              ),
                              Container(
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.asset(
                                    'assets/images/business_network_jito.jpg',
                                    height: MediaQuery.of(context).size.height *
                                        .05,
                                    width:
                                        MediaQuery.of(context).size.width * .18,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: AppColors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset(
                                'assets/images/jito_youth.jpeg',
                                height:
                                    MediaQuery.of(context).size.height * .04,
                                width: MediaQuery.of(context).size.width * .14,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .02,
                          ),
                          Container(
                            color: AppColors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(
                                'assets/images/jito_jodhpur.jpg',
                                height:
                                    MediaQuery.of(context).size.height * .04,
                                width: MediaQuery.of(context).size.width * .14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/images/tsc_logo.png',
                          height: MediaQuery.of(context).size.height * .13,
                          width: MediaQuery.of(context).size.width * .55,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .65,
                          child: const Text(
                            'The only market where you might take everything home',
                            style: TextStyle(
                                color: AppColors.cream,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColors.cream,
                            radius: 15,
                            child: Icon(
                              Icons.calendar_month_rounded,
                              color: AppColors.darkBlue,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .04,
                          ),
                          const Text(
                            '24th & 25th Feb',
                            style: TextStyle(
                                color: AppColors.cream,
                                fontSize: 16,
                                height: 1),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColors.cream,
                            radius: 15,
                            child: Icon(
                              Icons.location_on,
                              color: AppColors.darkBlue,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .04,
                          ),
                          const Text(
                            'The Lawn, Near Novotel Jodhpur',
                            style: TextStyle(
                                color: AppColors.cream,
                                fontSize: 16,
                                height: 1),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.lightBlue),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: AppColors.darkBlue,
                                  fontSize: 16,
                                  height: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'assets/images/home-balloons.png',
                        height: MediaQuery.of(context).size.height * .18,
                        width: MediaQuery.of(context).size.width * .55,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/images/home-clouds2.png',
                          height: MediaQuery.of(context).size.height * .18,
                          width: MediaQuery.of(context).size.width * .55,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/home-clouds.png',
                          height: MediaQuery.of(context).size.height * .18,
                          width: MediaQuery.of(context).size.width * .55,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width,
                color: AppColors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      const HeadingsContainer(
                        text: 'About us',
                        fontSize: 20,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      ContentContainer(
                          outerColor: AppColors.pink,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'The Social Chutney',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .04),
                                const Text(
                                  "The Social Chutney is a platform where every business is celebrated and every cause is discovered and assisted with whatever we can, however we can. Join us at the biggest flea festival in Rajasthan for our second edition on xxxxx 2024 where we just don't provide a source of income but a source of passion, a source of culture, and most importantly a source of diversity.\n\n Our vision is to transform two and three-tier cities into thriving hotspot of fashion, music and art, giving them the recognition that they deserve.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 0),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .75,
                width: MediaQuery.of(context).size.width,
                color: AppColors.pink,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 60.0, bottom: 30, left: 30, right: 30),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * .48,
                        width: MediaQuery.of(context).size.width * .75,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .05),
                      const Text(
                          'A passionately curated platforms for entrepreneurs coming in from all over India to thrive and shine amidst the limitless opportunities in Tier 2 and Tier 3 cities.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.cream,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .83,
                width: MediaQuery.of(context).size.width,
                color: AppColors.darkBlue,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, bottom: 40, left: 20, right: 20),
                  child: Column(
                    children: [
                      const HeadingsContainer(
                        text: 'Entertainment and Activities',
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: entertainmentList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(14),
                              // padding: EdgeInsets.all(8),
                              // height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * .72,
                              child: ContentContainer(
                                  paddingSize: 10,
                                  outerColor: AppColors.lightBlue,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          entertainmentList[index]["image"]),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 16),
                                        child: Text(
                                            entertainmentList[index]["desc"],
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            style: const TextStyle(
                                                color: AppColors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                    ],
                                  )),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width,
                color: AppColors.yellow,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, bottom: 40, left: 20, right: 20),
                  child: Column(
                    children: [
                      const HeadingsContainer(
                          text: 'Corporate Social Responsibility',
                          fontSize: 16),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(14),
                              // padding: EdgeInsets.all(8),
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * .72,
                              child: ContentContainer(
                                  paddingSize: 10,
                                  outerColor: AppColors.pink,
                                  child: Image.asset(corporateList[index])),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .8,
                width: MediaQuery.of(context).size.width,
                color: AppColors.darkBlue,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, bottom: 20, left: 20, right: 20),
                  child: Column(
                    children: [
                      const HeadingsContainer(
                          text: 'Area of Nostalgia', fontSize: 16),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(14),
                              // padding: EdgeInsets.all(8),
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * .72,
                              child: const ContentContainer(
                                  paddingSize: 10,
                                  outerColor: AppColors.pink,
                                  child: SizedBox()),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const RegistrationWidget(),
              const SponsorsWidget(),
              const FoundersWidget(),
              const AppFooter()
            ],
          ),
        ));
  }
}
