// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
import 'package:business_mates/presentation/screens/authentication/forgot_password_screen.dart';
import 'package:business_mates/presentation/screens/authentication/login_screen.dart';
import 'package:business_mates/presentation/screens/authentication/register_screen.dart';
import 'package:business_mates/presentation/screens/authentication/verify_otp_screen.dart';
import 'package:business_mates/presentation/screens/category/single_categories_screen.dart';
import 'package:business_mates/presentation/screens/course/read_course_content_screen.dart';
import 'package:business_mates/presentation/screens/homepage/home_screen.dart';
import 'package:business_mates/presentation/screens/homepage/profile_screen.dart';
import 'package:business_mates/presentation/screens/homepage/update_profile_screen.dart';
import 'package:business_mates/presentation/screens/homepage/view_course_content_screen.dart';
import 'package:business_mates/presentation/screens/introduction_animation/introduction_animation_screen.dart';
import 'package:business_mates/presentation/screens/payments/payment_screen.dart';
import 'package:business_mates/presentation/screens/root_dashboard.dart';
import 'package:business_mates/presentation/screens/splash_screen.dart';

import 'presentation/screens/course/pdf_viewer_screen.dart';
import 'presentation/screens/homepage/course_info_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      name: "SplashScreenRoute",
      path: SplashScreen.routeName,
    ),
    AutoRoute(
      page: RegisterScreen,
      name: "RegisterScreenRoute",
      path: RegisterScreen.routeName,
    ),
    AutoRoute(
      page: LoginScreen,
      name: "LoginScreenRoute",
      path: LoginScreen.routeName,
    ),
    AutoRoute(
      page: VerifyOTPScreen,
      name: "VerifyOTPScreenRoute",
      path: VerifyOTPScreen.routeName,
    ),
    AutoRoute(
      page: HomePage,
      name: "HomePageRoute",
      path: HomePage.routeName,
    ),
    AutoRoute(
      page: RootDashboard,
      name: "RootDashboardRoute",
      path: RootDashboard.routeName,
    ),
    AutoRoute(
      page: CourseInfoScreen,
      name: "CourseInfoScreenRoute",
      path: CourseInfoScreen.routeName,
    ),
    AutoRoute(
      page: IntroductionAnimationScreen,
      name: "IntroductionAnimationScreenRoute",
      path: IntroductionAnimationScreen.routeName,
    ),
    AutoRoute(
      page: ProfileScreen,
      name: "ProfileScreenRoute",
      path: ProfileScreen.routeName,
    ),
    AutoRoute(
      page: UpdateProfileScreen,
      name: "UpdateProfileScreenRoute",
      path: UpdateProfileScreen.routeName,
    ),
    AutoRoute(
      page: ViewCourseContentScreen,
      name: "ViewCourseContentScreenRoute",
      path: ViewCourseContentScreen.routeName,
    ),
    AutoRoute(
      page: ReadCourseContentScreen,
      name: "ReadCourseContentScreenRoute",
      path: ReadCourseContentScreen.routeName,
    ),
    AutoRoute(
      page: PdfViewerScreen,
      name: "PdfViewerScreenRoute",
      path: PdfViewerScreen.routeName,
    ),
    AutoRoute(
      page: SingleCategoryScreen,
      name: "SingleCategoryScreenRoute",
      path: SingleCategoryScreen.routeName,
    ),
    AutoRoute(
      page: PaymentScreen,
      name: "PaymentScreenRoute",
      path: PaymentScreen.routeName,
    ),
    AutoRoute(
      page: ForgotPasswordScreen,
      name: "ForgotPasswordScreenRoute",
      path: ForgotPasswordScreen.routeName,
    ),
    AutoRoute(page: SplashScreen, initial: true),
  ],
)
class $AppRouter {}
