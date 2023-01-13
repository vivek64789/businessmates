import 'package:auto_route/auto_route.dart';
import '../../../core/design/app_icons.dart';
import '../../../core/utils/validation_helper.dart';
import '../../cubits/auth/auth_cubit.dart';
import 'login_screen.dart';
import 'verify_otp_screen.dart';
import '../../widgets/bm_button.dart';
import '../../widgets/bm_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constants.dart';
import '../../cubits/manage_categories/manage_categories_cubit.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const routeName = '/register-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // cubits
  late AuthCubit _authCubit;
  // text editing controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
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
                    'Create your new account',
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
                      hintText: 'Email',
                      // labelText: 'Email',
                      prefixIcon: const Icon(BMIcon.envelope),
                      controller: _emailController,
                      validator: (value) {
                        return isEmpty(value) ?? isEmail(value);
                      },
                    ),
                  ),
                  //  Password form field
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  // Password form field
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Constants.formFieldMarginHorizontal),
                    child: BMTextFormField(
                      hintText: 'Password',
                      prefixIcon: const Icon(BMIcon.lock),
                      onChanged: (v) {},
                      obscureText: isHidden,
                      controller: _passwordController,
                      validator: (value) {
                        return isEmpty(value) ?? checkPassword(value);
                      },
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
                  // Password form field end
                  //  Password form field
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  // Password form field
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Constants.formFieldMarginHorizontal),
                    child: BMTextFormField(
                      hintText: 'Confirm Password',
                      prefixIcon: const Icon(BMIcon.lock),
                      controller: _confirmPasswordController,
                      onChanged: (v) {},
                      validator: (value) {
                        return isEmpty(value) ?? checkPassword(value);
                      },
                      obscureText: true,
                    ),
                  ),
                  // Password form field end
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listenWhen: (previous, current) {
                      return previous.registerLoadingStatus !=
                          current.registerLoadingStatus;
                    },
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
                      if (state.registerLoadingStatus == LoadingStatus.loaded) {
                        context.router.replaceNamed(VerifyOTPScreen.routeName);
                      }
                    },
                    builder: (context, state) {
                      return BMButton(
                          isLoading: state.registerLoadingStatus ==
                              LoadingStatus.loading,
                          onPressed: () {
                            // validate the form
                            if (_formKey.currentState!.validate()) {
                              // if form is valid, check if the password and confirm password match
                              if (_passwordController.text !=
                                  _confirmPasswordController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Passwords do not match"),
                                  ),
                                );
                                return;
                              } else {
                                // if the form is valid, register
                                _authCubit.createUserWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                );
                              }
                            }
                          },
                          text: "Register");
                    },
                  ),
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      TextButton(
                        onPressed: () {
                          context.router.replaceNamed(LoginScreen.routeName);
                        },
                        child: Text(
                          "Login in",
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
