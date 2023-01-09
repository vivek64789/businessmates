import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:business_mates/presentation/cubits/auth/auth_cubit.dart';
import 'package:business_mates/presentation/cubits/manage_categories/manage_categories_cubit.dart';
import 'package:business_mates/presentation/cubits/manage_profile/manage_profile_cubit.dart';
import 'package:business_mates/presentation/widgets/bm_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

import '../../../routes.gr.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  static const String routeName = "payment_screen";

  static Page page() => const MaterialPage<void>(child: PaymentScreen());

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Map<String, dynamic>? paymentIntent;
  final String SECRET_KEY =
      "sk_test_51Ih5GzHmsIXlXA5BXcXB2pu9zIPUO4m3AI1aJ7alTbGsvE4tquIosr7ujx079Bo88JtGKz7JkeEJLBsOZFeJnBm000HB1PVyYk";

  Future<void> makePayment() async {
    try {
      paymentIntent = await createPaymentIntent('10', 'USD');
      //Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                  paymentIntentClientSecret: paymentIntent!['client_secret'],
                  // applePay: const PaymentSheetApplePay(merchantCountryCode: '+92',),
                  // googlePay: const PaymentSheetGooglePay(testEnv: true, currencyCode: "US", merchantCountryCode: "+92"),
                  style: ThemeMode.dark,
                  merchantDisplayName: 'Business Mates'))
          .then((value) {});

      ///now finally display payment sheeet
      displayPaymentSheet();
    } catch (e, s) {
      print('exception:$e$s');
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) async {
        await context.read<ManageProfileCubit>().updateProfile(
              userProfileModel: context
                  .read<AuthCubit>()
                  .state
                  .userProfileModel
                  .copyWith(isSubscribed: true),
            );
        context.router.replace(const SplashScreenRoute());

        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Subscribed Successfully")));

        paymentIntent = null;
      }).onError((error, stackTrace) {
        print('Error is:--->$error $stackTrace');
      });
    } on StripeException catch (e) {
      print('Error is:---> $e');
      showDialog(
          context: context,
          builder: (_) => const AlertDialog(
                content: Text("Cancelled "),
              ));
    } catch (e) {
      print('$e');
    }
  }

  //  Future<Map<String, dynamic>>
  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types[]': 'card'
      };

      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'Bearer $SECRET_KEY',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      // ignore: avoid_print
      print('Payment Intent Body->>> ${response.body.toString()}');
      return jsonDecode(response.body);
    } catch (err) {
      // ignore: avoid_print
      print('err charging user: ${err.toString()}');
    }
  }

  calculateAmount(String amount) {
    final calculatedAmout = (int.parse(amount)) * 100;
    return calculatedAmout.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Payment Pending",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Lottie.network(
                "https://assets7.lottiefiles.com/packages/lf20_ph09qu41.json",
              ),
              const Text(
                "In Order to access the content, you need to subscribe to our services",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              BlocConsumer<ManageProfileCubit, ManageProfileState>(
                listener: (context, state) {
                  if (state.manageProfileLoadingStatus ==
                      LoadingStatus.loaded) {}
                },
                builder: (context, state) {
                  return BMButton(
                    isLoading: state.manageProfileLoadingStatus ==
                        LoadingStatus.loading,
                    onPressed: () {
                      makePayment();
                    },
                    text: "Pay Now With Stripe",
                  );
                },
              ),
            ]),
      ),
    );
  }
}
