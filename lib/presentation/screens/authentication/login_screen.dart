import 'package:auto_route/auto_route.dart';
import 'package:business_mates/core/design/size.dart';
import '../../../core/design/app_icons.dart';
import '../../../core/utils/validation_helper.dart';
import '../../cubits/auth/auth_cubit.dart';
import 'forgot_password_screen.dart';
import 'register_screen.dart';
import 'verify_otp_screen.dart';
import '../../widgets/bm_button.dart';
import '../../widgets/bm_text_form_field.dart';
import '../../../routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constants.dart';
import '../../cubits/manage_categories/manage_categories_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login-screen';
  static Page page() => const MaterialPage<void>(child: LoginScreen());

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthCubit _authCubit;
  // controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isHidden = true;

  bool isHiddenConfirm = true;

  bool isChecked = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _authCubit = context.read<AuthCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    'Login to your account',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  const LogoWidget(height: 150),

                  // Email form field
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Constants.formFieldMarginHorizontal),
                    child: BMTextFormField(
                      controller: _emailController,
                      hintText: 'Email',
                      // labelText: 'Email',
                      prefixIcon: const Icon(BMIcon.envelope),
                      validator: (value) {
                        return isEmpty(value) ?? isEmail(value);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  // Password form field
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Constants.formFieldMarginHorizontal),
                    child: BMTextFormField(
                      controller: _passwordController,
                      hintText: 'Password',
                      prefixIcon: const Icon(BMIcon.lock),
                      validator: (value) {
                        return isEmpty(value) ?? checkPassword(value);
                      },
                      obscureText: isHidden,
                      suffixIcon: IconButton(
                        icon: Icon(
                          !isHidden ? BMIcon.eye : BMIcon.eye_slash,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                        onPressed: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: paddingHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              context.router.pushNamed(
                                ForgotPasswordScreen.routeName,
                              );
                            },
                            child: const Text('Forgot Password?')),
                      ],
                    ),
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      state.failureMessageOption.fold(
                        () => {},
                        (failure) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(failure.when(
                                serverError: (e) => e.toString(),
                                noInternetConnection: (e) => e.toString(),
                                tooManyRequests: (e) => e.toString(),
                                deviceNotSupported: (e) => e.toString(),
                                smsTimeout: (e) => e.toString(),
                                sessionExpired: (e) => e.toString(),
                                invalidVerificationCode: (e) => e.toString(),
                                invalidEmailAddress: (e) => e.toString(),
                                weakPassword: (e) => e.toString(),
                                invalidActionCode: (e) => e.toString(),
                                emailAlreadyInUse: (e) => e.toString(),
                                invalidEmailAndPasswordCombination: (e) =>
                                    e.toString(),
                                userNotFound: (e) => e.toString(),
                                requiresRecentLogin: (e) => e.toString(),
                              )),
                            ),
                          );
                        },
                      );
                      if (state.loginLoadingStatus == LoadingStatus.loaded &&
                          state.currentLoggedInUser!.emailVerified == true) {
                        context.router.replace(
                          const SplashScreen(),
                        );
                      } else if (state.loginLoadingStatus ==
                              LoadingStatus.loaded &&
                          state.currentLoggedInUser!.emailVerified == false) {
                        context.router.replaceNamed(VerifyOTPScreen.routeName);
                      }
                    },
                    builder: (context, state) {
                      return BMButton(
                          isLoading:
                              state.loginLoadingStatus == LoadingStatus.loading,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _authCubit.signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                            }
                          },
                          text: "Login");
                    },
                  ),
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      TextButton(
                        onPressed: () {
                          context.router.replaceNamed(RegisterScreen.routeName);
                        },
                        child: Text(
                          "Sign up",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(paddingHorizontal),
      height: height,
      child: Image.asset(
        Constants.logo,
        fit: BoxFit.contain,
      ),
    );
  }
}
