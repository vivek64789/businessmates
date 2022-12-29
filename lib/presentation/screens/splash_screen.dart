import 'authentication/login_screen.dart';
import 'authentication/verify_otp_screen.dart';
import 'introduction_animation/introduction_animation_screen.dart';
import 'root_dashboard.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/auth/auth_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<AuthCubit>().checkIsAppFirstTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AuthState>(
      state: context.watch<AuthCubit>().state,
      onGeneratePages: (authState, pages) {
        if (authState.isAppFirstTimeChecking) {
          return [
            const MaterialPage(
              child: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          ];
        }
        if (authState.isAppFirstTime) {
          return [IntroductionAnimationScreen.page()];
        } else if (authState.currentLoggedInUser == null) {
          return [LoginScreen.page()];
        } else if (authState.currentLoggedInUser != null &&
            authState.currentLoggedInUser!.uid.isNotEmpty &&
            authState.currentLoggedInUser!.emailVerified) {
          return [RootDashboard.page()];
        } else if (authState.currentLoggedInUser!.uid.isNotEmpty &&
            !authState.currentLoggedInUser!.emailVerified) {
          return [VerifyOTPScreen.page()];
        } else {
          return [LoginScreen.page()];
        }
      },
    );
  }
}
