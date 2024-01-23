import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';
import 'package:socialchutney/utils/headings_container.dart';

class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({super.key});

  static const List<Map> registrationCardListItems = [
    {
      "title": "Food Stall #JO land",
      "image": "",
      "buttonUrl": "",
    },
    {
      "title": "Merchandise Stall",
      "image": "",
      "buttonUrl": "",
    },
    {
      "title": "Pet Registration",
      "image": "",
      "buttonUrl": "",
    },
    {
      "title": "Student Volunteer",
      "image": "",
      "buttonUrl": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
      child: Column(
        children: [
          const HeadingsContainer(text: 'Registration', fontSize: 16),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 250,
                crossAxisCount: 2),
            itemCount: registrationCardListItems.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SingleRegistrationCard(
                  index: index,
                  registrationCardItem: registrationCardListItems[index]);
            },
          )
        ],
      ),
    );
  }
}

class SingleRegistrationCard extends StatelessWidget {
  final Map registrationCardItem;
  final int index;
  const SingleRegistrationCard(
      {super.key, required this.registrationCardItem, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: index > 1 ? AppColors.lightBlue : AppColors.pink,
            border: Border.all(color: AppColors.black, width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(registrationCardItem["title"],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: index > 1 ? AppColors.black : AppColors.white,
                        fontSize: 16))),
            const SizedBox(height: 130),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        index > 1 ? AppColors.pink : AppColors.lightBlue),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: index > 1 ? AppColors.white : AppColors.black,
                        fontSize: 16,
                        height: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ))
          ],
        ));
  }
}
