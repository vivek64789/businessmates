import 'package:auto_route/auto_route.dart';
import '../../../core/design/app_icons.dart';
import '../../../core/utils/validation_helper.dart';
import '../../cubits/auth/auth_cubit.dart';
import 'register_screen.dart';
import '../../widgets/bm_button.dart';
import '../../widgets/bm_text_form_field.dart';
import '../../../routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/constants.dart';
import '../../cubits/manage_categories/manage_categories_cubit.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  static const routeName = '/forgot-password-screen';
  static Page page() => const MaterialPage<void>(child: ForgotPasswordScreen());

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late AuthCubit _authCubit;
  // controllers
  final TextEditingController _emailController = TextEditingController();

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
                    'Forgot your password',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: Constants.formFieldBetweenSpacing,
                  ),
                  SizedBox(
                    height: 200,
                    child: SvgPicture.asset(
                      "assets/images/login.svg",
                      fit: BoxFit.contain,
                    ),
                  ),

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
                      if (state.sendResetPasswordLinkLoadingStatus ==
                          LoadingStatus.loaded) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("Reset link sent to your email!")));
                        context.router.replace(
                          const LoginScreenRoute(),
                        );
                      }
                    },
                    builder: (context, state) {
                      return BMButton(
                          isLoading: state.sendResetPasswordLinkLoadingStatus ==
                              LoadingStatus.loading,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _authCubit.sendPasswordResetEmail(
                                email: _emailController.text,
                              );
                            }
                          },
                          text: "Send reset link");
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
