import 'package:business_mates/presentation/screens/payments/payment_screen.dart';

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
    context.read<AuthCubit>().getCurrentUser();
    if (context.read<AuthCubit>().state.currentLoggedInUser != null) {
      context.read<AuthCubit>().getUserProfile(
          uid: context.read<AuthCubit>().state.currentLoggedInUser!.uid);
    }

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (context.watch<AuthCubit>().state.currentLoggedInUser != null) {
      context.watch<AuthCubit>().getUserProfile(
          uid: context.watch<AuthCubit>().state.currentLoggedInUser!.uid);
    }
    super.didChangeDependencies();
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
        } else if (authState.currentLoggedInUser!.uid.isNotEmpty &&
            !authState.currentLoggedInUser!.emailVerified) {
          return [VerifyOTPScreen.page()];
        } else if (authState.currentLoggedInUser != null &&
            authState.currentLoggedInUser!.uid.isNotEmpty &&
            authState.currentLoggedInUser!.emailVerified &&
            authState.userProfileModel.isSubscribed == false) {
          return [PaymentScreen.page()];
        } else if (authState.currentLoggedInUser != null &&
            authState.currentLoggedInUser!.uid.isNotEmpty &&
            authState.currentLoggedInUser!.emailVerified) {
          return [RootDashboard.page()];
        } else {
          return [LoginScreen.page()];
        }
      },
    );
  }
}
