import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      color: AppColors.pink,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 36,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset('assets/images/footer-logo.png'),
            ),
          ),
          const SizedBox(height: 4),
          Container(height: 1, color: Colors.white),
          const SizedBox(height: 12),
          const Text("Reach us out",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          const Row(
            children: [
              Icon(
                Icons.call,
                color: AppColors.white,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("+91 7597088423 / 9660539067",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              Icon(
                Icons.email,
                color: AppColors.white,
                size: 16,
              ),
              SizedBox(width: 12),
              Text("Team.thesocialchutney@gmail.com",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Facebook.png",
                color: AppColors.white,
              ),
              SizedBox(width: 12),
              Image.asset(
                "assets/images/Instagram.png",
                color: AppColors.white,
              ),
              SizedBox(width: 12),
              Image.asset(
                "assets/images/Twitter.png",
                color: AppColors.white,
              ),
              SizedBox(width: 12),
              Image.asset(
                "assets/images/Linkdin.png",
                color: AppColors.white,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(height: 1, color: Colors.white),
          const SizedBox(height: 16),
          const SizedBox(
            width: double.infinity,
            child: Text("© TSC 2024. Made by 🖤 in Jodhpur",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
