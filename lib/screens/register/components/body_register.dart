import 'package:dtumaps/data/models/user_data/user_data.dart';
import 'package:dtumaps/data/models/user_profile/user_profile.dart';
import 'package:dtumaps/screens/general/loading_state_view_model.dart';
import 'package:dtumaps/screens/general/user_view_model.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:dtumaps/utilize/validation.dart';
import 'package:dtumaps/widgets/loading/container_with_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../widgets/already_have_an_account_check.dart';
import '../../../widgets/input_field.dart';
import '../../../widgets/rounded_button.dart';
import 'widgets/body_text.dart';
import 'widgets/title.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Body extends StatefulHookWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController? _userName;
  TextEditingController? _email;
  TextEditingController? _password;
  TextEditingController? _confirmPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _userName = TextEditingController(text: "");
    _email = TextEditingController(text: "");
    _password = TextEditingController(text: "");
    _confirmPassword = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final userViewModel = context.read(userViewModelProvider);
    final user =
        useProvider(userViewModelProvider.select((value) => value.user));
    return Container(
      child: Consumer(
        builder: (context, watch, child) {
          final loading = watch(loadingStateProvider);

          return ContainerWithLoading(
            child: loading.isLoading
                ? SizedBox()
                : Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        TitleText(),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        InputField(
                          hintText: "Họ và tên",
                          icon: Icons.people,
                          obscureText: false,
                          controller: _userName,
                          validator: (value) {
                            if (!value!.isNotEmpty) {
                              return "User name required";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        InputField(
                          hintText: "Email",
                          icon: Icons.mail,
                          obscureText: false,
                          controller: _email,
                          validator: (value) {
                            return Validation.validateEmail(
                                value ?? "", "test");
                          },
                        ),
                        SizedBox(height: 15),
                        InputField(
                          hintText: "Mật khẩu",
                          icon: Icons.lock,
                          obscureText: true,
                          controller: _password,
                          validator: (value) {
                            return Validation.validatePassword(value ?? "");
                          },
                        ),
                        SizedBox(height: 15),
                        InputField(
                          hintText: "Nhập lại mật khẩu",
                          icon: Icons.security,
                          obscureText: true,
                          controller: _confirmPassword,
                          validator: (value) {
                            return Validation.validateConfirmPassword(
                                value ?? "", _password!.text);
                          },
                        ),
                        SizedBox(height: 30),
                        RoundedButton(
                          text: "Đăng Ký",
                          pressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final UserProfile userProfile = UserProfile(
                                  firstName: _userName!.text, lastName: " ");
                              final UserData userData = UserData(
                                profile: userProfile,
                                email: _email!.text,
                              );

                              await loading.whileLoading(
                                () async {
                                  await userViewModel.signUp(
                                    user: userData,
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
                        SizedBox(
                          height: 15,
                        ),
                        AlreadyHaveAnAccountCheck(
                          pressed: () {
                            Navigator.popAndPushNamed(context, Routes.login);
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        BodyText(),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
