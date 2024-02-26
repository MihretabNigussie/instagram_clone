import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';
import 'package:instagram_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:instagram_clone/features/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  bool _isSigningUp = false;
  bool _isUploading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: SvgPicture.asset(
                      "assets/ic_instagram.svg",
                      color: primaryColor,
                    )),
                    sizeVer(15),
                    Center(
                      child: Stack(
                        children: [
                          SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: Colors.white,
                                    child: const Icon(
                                      Icons.person,
                                      color: primaryColor,
                                    ),
                                  ))),
                          Positioned(
                            right: -10,
                            bottom: -15,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_a_photo,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizeVer(30),
                    FormContainerWidget(
                      controller: _usernameController,
                      hintText: "UserName",
                    ),
                    sizeVer(15),
                    FormContainerWidget(
                      controller: _emailController,
                      hintText: "Email",
                    ),
                    sizeVer(15),
                    FormContainerWidget(
                      controller: _passwordController,
                      hintText: "Password",
                      isPasswordField: true,
                    ),
                    sizeVer(15),
                    FormContainerWidget(
                      controller: _bioController,
                      hintText: "Bio",
                    ),
                    sizeVer(15),
                    ButtonContainerWidget(
                      color: blueColor,
                      text: "Sign Up",
                      onTapListener: () {},
                    ),
                  ],
                ),
              ),
              const Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      context.go('/login');
                    },
                    child: const Text(
                      "Sign In.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
