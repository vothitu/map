import 'package:dtumaps/consts/my_colors.dart';
import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/screens/general/user_view_model.dart';
import 'package:dtumaps/screens/login/components/app_divider.dart';
import 'package:dtumaps/screens/routes/routes.dart';

import 'package:dtumaps/utilize/screen_size.dart';
import 'package:dtumaps/utilize/validation.dart';
import 'package:dtumaps/widgets/already_have_an_account_check.dart';
import 'package:dtumaps/widgets/app_text.dart';
import 'package:dtumaps/widgets/input_field.dart';
import 'package:dtumaps/widgets/loading/container_with_loading.dart';
import 'package:dtumaps/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'custom_outline_button.dart';

class LoginBody extends StatefulHookWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController? _email;
  TextEditingController? _password;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _email = TextEditingController(text: "huynhphvan@gmail.com");
    _password = TextEditingController(text: "Vietnam2k");
  }

  @override
  Widget build(BuildContext context) {
    Size size = ScreenSize.getScreenSize(context);

    final userViewModel = context.read(userViewModelProvider);

    return Consumer(
      builder: (context, watch, child) {
        final loading = watch(loadingStateProvider);
        return ContainerWithLoading(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: AppText(
                            "Đăng Nhập",
                            fontSize: 30,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  InputField(
                    hintText: "Email",
                    icon: Icons.email,
                    controller: _email,
                    validator: (value) {
                      return Validation.validateEmail(value ?? "", "test");
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  InputField(
                    hintText: "Mật Khẩu",
                    obscureText: true,
                    icon: Icons.lock,
                    controller: _password,
                    validator: (value) {
                      return Validation.validatePassword(value ?? "");
                    },
                  ),
                  GestureDetector(
                    // TODO 1: Make a function for  forgot password.
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.forgotPassword);
                    },
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.only(right: 30, top: 10),
                            child: AppText(
                              "Quên mật khẩu?",
                              color: MyColors.azure,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedButton(
                    text: "Đăng Nhập",
                    pressed: () async {
                      if (_formKey.currentState!.validate()) {
                        loading.whileLoading(
                          () async {
                            await userViewModel.signIn(
                              email: _email!.text,
                              password: _password!.text,
                            );

                            await Future.delayed(
                              Duration(seconds: 3),
                              () {
                                Navigator.pushReplacementNamed(
                                    context, Routes.home);
                              },
                            );
                          },
                        );
                      }
                    },
                  ),
                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        Expanded(
                          child: AppDivider(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: AppText(
                            "Or, login with...",
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                        Expanded(
                          child: AppDivider(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutLineButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/google_logo.png",
                              height: 30,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      CustomOutLineButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/facebook_logo.png",
                              height: 30,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      CustomOutLineButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/apple_logo.png",
                              height: 30,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.036,
                  ),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    pressed: () {
                      Navigator.pushReplacementNamed(context, Routes.register);
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.036,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
