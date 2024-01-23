import 'package:flutter/material.dart';
import 'package:socialchutney/utils/app_drawer.dart';
import 'package:socialchutney/utils/app_footer.dart';

import '../constants.dart';

class ContactUsScreen extends StatefulWidget {
  static const routeName = "/contact-us";
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(backgroundColor: AppColors.lightBlue),
        backgroundColor: const Color.fromARGB(255, 5, 41, 109),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Text('Get In touch',
                          style: TextStyle(
                              color: AppColors.yellow,
                              fontSize: 36,
                              fontWeight: FontWeight.w600))),
                  const Text(
                    'Any question or remarks?\nJust write us a message!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.pink,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: [
                                      const Text('Contact Information',
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700)),
                                      const SizedBox(height: 16),
                                      const Text("Don't be shy Ping us",
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 14)),
                                      const SizedBox(height: 16),
                                      const Icon(Icons.call,
                                          color: AppColors.white),
                                      const SizedBox(height: 8),
                                      const Text("+000000000",
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 14)),
                                      const SizedBox(height: 16),
                                      const Icon(Icons.mail,
                                          color: AppColors.white),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "team.thesocialchutney@gmail.com",
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(height: 16),
                                      const Icon(Icons.location_pin,
                                          color: AppColors.white),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "Jodhpur, Raj.",
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .04),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleIcon(
                                            image: "assets/images/Twitter.png",
                                          ),
                                          CircleIcon(
                                            image: "assets/images/Facebook.png",
                                          ),
                                          CircleIcon(
                                            image:
                                                "assets/images/Instagram.png",
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const Positioned(
                                    bottom: -80,
                                    right: -80,
                                    child: CircleAvatar(
                                        radius: 80,
                                        backgroundColor: AppColors.yellow)),
                                const Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: CircleAvatar(
                                        backgroundColor: AppColors.lightBlue,
                                        radius: 25))
                              ],
                            ),
                          ),
                          const SizedBox(height: 28.0),
                          TextField(
                            controller: firstNameController,
                            focusNode: firstNameFocus,
                            labelText: 'First Name',
                            hintText: 'Mandatory field',
                            labelColor: AppColors.pink,
                          ),
                          const SizedBox(height: 28.0),
                          TextField(
                            controller: lastNameController,
                            focusNode: lastNameFocus,
                            labelText: 'Last Name',
                            hintText: 'Optional field',
                            labelColor: AppColors.pink,
                          ),
                          const SizedBox(height: 28.0),
                          TextField(
                            controller: emailController,
                            focusNode: emailFocus,
                            labelText: 'Email',
                            hintText: 'Mandatory field',
                            keyboardType: TextInputType.emailAddress,
                            labelColor: AppColors.pink,
                          ),
                          const SizedBox(height: 28.0),
                          TextField(
                            controller: phoneController,
                            focusNode: phoneFocus,
                            labelText: 'Phone Number',
                            maxLength: 10,
                            hintText: 'Mandatory field',
                            labelColor: AppColors.pink,
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(height: 28.0),
                          const SubjectSelection(),
                          const SizedBox(height: 28.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        AppColors.pink),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Send Message',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                  const AppFooter()
                ],
              ),
            ),
          ),
        ));
  }
}

class CircleIcon extends StatelessWidget {
  final String image;
  const CircleIcon({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 14.0,
          child: Image.asset(
            image,
            color: AppColors.pink,
          )),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField(
      {super.key,
      required this.controller,
      required this.focusNode,
      required this.labelText,
      required this.hintText,
      required this.labelColor,
      this.keyboardType,
      this.isRequired,
      this.maxLength});
  final bool? isRequired;

  final TextEditingController controller;
  final FocusNode focusNode;
  final String labelText;
  final String hintText;
  final TextInputType? keyboardType;
  final Color labelColor;

  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
              color: labelColor, fontSize: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          // height: 40,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            maxLength: maxLength,
            cursorColor: AppColors.pink,
            cursorHeight: 20,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                errorBorder: pinkBorder,
                enabledBorder: pinkBorder,
                focusedBorder: pinkBorder,
                disabledBorder: pinkBorder,
                focusedErrorBorder: pinkBorder,
                border: pinkBorder,
                hintStyle: const TextStyle(color: AppColors.grey),
                hintText: hintText),
            validator: (value) {
              if (isRequired == false) {
                return null;
              }
              if (value == null || value.isEmpty) {
                return 'Please enter complete details';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}

class SubjectSelection extends StatefulWidget {
  const SubjectSelection({super.key});

  @override
  SubjectSelectionState createState() => SubjectSelectionState();
}

class SubjectSelectionState extends State<SubjectSelection> {
  String selectedSubject = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Select Subject?',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.pink,
                  fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  title: const Text(
                    'General Inquiry',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.pink,
                        fontWeight: FontWeight.w600),
                  ),
                  value: 'General Inquiry',
                  groupValue: selectedSubject,
                  activeColor: AppColors.pink,
                  onChanged: (value) {
                    setState(() {
                      selectedSubject = value!;
                    });
                  },
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  title: const Text(
                    'Sponsorship',
                    style: TextStyle(
                        color: AppColors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  value: 'Sponsorship',
                  groupValue: selectedSubject,
                  activeColor: AppColors.pink,
                  onChanged: (value) {
                    setState(() {
                      selectedSubject = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  title: const Text(
                    'Stall',
                    style: TextStyle(
                        color: AppColors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  value: 'Stall',
                  groupValue: selectedSubject,
                  activeColor: AppColors.pink,
                  onChanged: (value) {
                    setState(() {
                      selectedSubject = value!;
                    });
                  },
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  title: const Text(
                    'Wanna be a Labour',
                    style: TextStyle(
                        color: AppColors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  value: 'Wanna be a Labour',
                  groupValue: selectedSubject,
                  activeColor: AppColors.pink,
                  onChanged: (value) {
                    setState(() {
                      selectedSubject = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
