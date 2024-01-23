import 'package:flutter/material.dart';
import 'package:socialchutney/constants.dart';
import 'package:socialchutney/utils/app_drawer.dart';
import 'package:socialchutney/utils/app_footer.dart';
import 'package:socialchutney/widgets/registration_widget.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = "/register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      drawer: const AppDrawer(),
      appBar: AppBar(backgroundColor: AppColors.lightBlue),
      body: ListView(
        children: const [RegistrationWidget(), AppFooter()],
      ),
    );
  }
}
