import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';
import 'package:socialchutney/utils/content_container.dart';

class FoundersWidget extends StatelessWidget {
  const FoundersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ContentContainer(
        innerColor: AppColors.pink,
        outerColor: AppColors.lightBlue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Founder's Note",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      height: 1,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 26),
              Container(
                height: 215,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16)),
              ),
              SizedBox(height: 36),
              Text("Sneha Dhariwal",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      height: 1,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 16),
              Text(
                  '''While passionately curating over 50+ exhibitions, I realised that tier-two and tier-three cities have a lot untapped potential as businesses here are facing difficulty scaling and establishing their brand presence. 
                  
This inspiration led to the birth of TSC, a curated platform aimed at nurturing business growth in these cities along with supporting causes that truly matter.
TSC aims to be Jodhpur's go-to marketplace for a vibrant weekend full of shopping, entertainment and fun curated experiences. 
                   
Join us to celebrate this amazing marketplace which has everything for everyone.''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}
