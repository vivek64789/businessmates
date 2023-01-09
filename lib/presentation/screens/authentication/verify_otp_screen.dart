import 'package:auto_route/auto_route.dart';
import 'package:business_mates/presentation/cubits/manage_profile/manage_profile_cubit.dart';
import '../../cubits/auth/auth_cubit.dart';
import 'register_screen.dart';
import '../../widgets/bm_button.dart';
import '../../../routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constants.dart';

class VerifyOTPScreen extends StatelessWidget {
  static const routeName = '/verify-otp-screen';
  const VerifyOTPScreen({super.key});

  static Page page() => const MaterialPage<void>(child: VerifyOTPScreen());

  @override
  Widget build(BuildContext context) {
    final AuthCubit authCubit = context.read<AuthCubit>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // design for the top of the screen
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Verify your Email Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Check your mail box and verify',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            // modern design for change email address

            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                context.router.pushNamed(RegisterScreen.routeName);
              },
              child: Text(
                'Click here to Change Email Address',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12,
                ),
              ),
            ),

            // design for the bottom of the screen
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: Constants.formFieldMarginHorizontal),
              child: Column(
                children: const [
                  // email has been sent to your email please check
                  Text(
                    'Email has been sent to your email please check and verify',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(
            //       horizontal: Constants.formFieldMarginHorizontal),
            //   child: FilledRoundedPinPut(
            //     onComplete: () {},
            //   ),
            // ),

            const SizedBox(
              height: 50,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return BMButton(
                    isLoading: state.isInProgress,
                    onPressed: () async {
                      final user =
                          await context.read<AuthCubit>().getCurrentUser();

                      if (user!.emailVerified) {
                        context
                            .read<ManageProfileCubit>()
                            .getUserProfile(uid: user.uid);
                        final bool isSubscribed = context
                            .read<ManageProfileCubit>()
                            .state
                            .userProfileModel
                            .isSubscribed;
                        print(isSubscribed);
                        isSubscribed
                            ? context.router.replaceAll(
                                [RootDashboardRoute(currentIndex: 0)])
                            : context.router
                                .replaceAll([const PaymentScreenRoute()]);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Please Verify Your Email Address',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                        );
                      }
                    },
                    text: "Check Verification");
              },
            ),
            // resend otp
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return BMButton(
                    color: Colors.red,
                    onPressed: () {
                      context.read<AuthCubit>().signOut();
                      context.router.replaceAll([const LoginScreenRoute()]);
                    },
                    text: "Logout");
              },
            ),
            // resend otp
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                authCubit.sendEmailVerification();
                // show message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Verification Email Re Sent',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
              child: Text(
                'Resend Verification Email',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
