// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import 'data/models/course/course_model.dart' as _i20;
import 'data/models/course/course_section_model.dart' as _i22;
import 'data/models/course_categories_model.dart' as _i23;
import 'data/models/user_profile_model.dart' as _i21;
import 'presentation/screens/authentication/forgot_password_screen.dart'
    as _i16;
import 'presentation/screens/authentication/login_screen.dart' as _i3;
import 'presentation/screens/authentication/register_screen.dart' as _i2;
import 'presentation/screens/authentication/verify_otp_screen.dart' as _i4;
import 'presentation/screens/category/single_categories_screen.dart' as _i14;
import 'presentation/screens/course/pdf_viewer_screen.dart' as _i13;
import 'presentation/screens/course/read_course_content_screen.dart' as _i12;
import 'presentation/screens/homepage/about_us_screen.dart' as _i17;
import 'presentation/screens/homepage/course_info_screen.dart' as _i7;
import 'presentation/screens/homepage/home_screen.dart' as _i5;
import 'presentation/screens/homepage/profile_screen.dart' as _i9;
import 'presentation/screens/homepage/update_profile_screen.dart' as _i10;
import 'presentation/screens/homepage/view_course_content_screen.dart' as _i11;
import 'presentation/screens/introduction_animation/introduction_animation_screen.dart'
    as _i8;
import 'presentation/screens/payments/payment_screen.dart' as _i15;
import 'presentation/screens/root_dashboard.dart' as _i6;
import 'presentation/screens/splash_screen.dart' as _i1;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    VerifyOTPScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.VerifyOTPScreen(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    RootDashboardRoute.name: (routeData) {
      final args = routeData.argsAs<RootDashboardRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.RootDashboard(
          key: args.key,
          currentIndex: args.currentIndex,
        ),
      );
    },
    CourseInfoScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CourseInfoScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.CourseInfoScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    IntroductionAnimationScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.IntroductionAnimationScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileScreen(),
      );
    },
    UpdateProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileScreenRouteArgs>(
          orElse: () => const UpdateProfileScreenRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.UpdateProfileScreen(
          key: args.key,
          userProfileModel: args.userProfileModel,
        ),
      );
    },
    ViewCourseContentScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ViewCourseContentScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.ViewCourseContentScreen(
          key: args.key,
          sections: args.sections,
        ),
      );
    },
    ReadCourseContentScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ReadCourseContentScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.ReadCourseContentScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    PdfViewerScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewerScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.PdfViewerScreen(
          key: args.key,
          url: args.url,
          label: args.label,
        ),
      );
    },
    SingleCategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SingleCategoryScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i14.SingleCategoryScreen(
          key: args.key,
          category: args.category,
        ),
      );
    },
    PaymentScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.PaymentScreen(),
      );
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ForgotPasswordScreen(),
      );
    },
    AboutUsScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.AboutUsScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash-screen',
        ),
        _i18.RouteConfig(
          RegisterScreenRoute.name,
          path: '/register-screen',
        ),
        _i18.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i18.RouteConfig(
          VerifyOTPScreenRoute.name,
          path: '/verify-otp-screen',
        ),
        _i18.RouteConfig(
          HomePageRoute.name,
          path: '/homepage',
        ),
        _i18.RouteConfig(
          RootDashboardRoute.name,
          path: '/Rootdashboard',
        ),
        _i18.RouteConfig(
          CourseInfoScreenRoute.name,
          path: '/course-info',
        ),
        _i18.RouteConfig(
          IntroductionAnimationScreenRoute.name,
          path: '/introduction-animation-screen',
        ),
        _i18.RouteConfig(
          ProfileScreenRoute.name,
          path: '/ProfileScreen',
        ),
        _i18.RouteConfig(
          UpdateProfileScreenRoute.name,
          path: '/update_profile_screen',
        ),
        _i18.RouteConfig(
          ViewCourseContentScreenRoute.name,
          path: '/view_course_content_screen',
        ),
        _i18.RouteConfig(
          ReadCourseContentScreenRoute.name,
          path: '/read_course_content_screen',
        ),
        _i18.RouteConfig(
          PdfViewerScreenRoute.name,
          path: '/PdfViewerScreen',
        ),
        _i18.RouteConfig(
          SingleCategoryScreenRoute.name,
          path: '/single_category_screen',
        ),
        _i18.RouteConfig(
          PaymentScreenRoute.name,
          path: 'payment_screen',
        ),
        _i18.RouteConfig(
          ForgotPasswordScreenRoute.name,
          path: '/forgot-password-screen',
        ),
        _i18.RouteConfig(
          AboutUsScreenRoute.name,
          path: '/about_us',
        ),
        _i18.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i18.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash-screen',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.RegisterScreen]
class RegisterScreenRoute extends _i18.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(
          RegisterScreenRoute.name,
          path: '/register-screen',
        );

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i18.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i4.VerifyOTPScreen]
class VerifyOTPScreenRoute extends _i18.PageRouteInfo<void> {
  const VerifyOTPScreenRoute()
      : super(
          VerifyOTPScreenRoute.name,
          path: '/verify-otp-screen',
        );

  static const String name = 'VerifyOTPScreenRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomePageRoute extends _i18.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/homepage',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i6.RootDashboard]
class RootDashboardRoute extends _i18.PageRouteInfo<RootDashboardRouteArgs> {
  RootDashboardRoute({
    _i19.Key? key,
    required int currentIndex,
  }) : super(
          RootDashboardRoute.name,
          path: '/Rootdashboard',
          args: RootDashboardRouteArgs(
            key: key,
            currentIndex: currentIndex,
          ),
        );

  static const String name = 'RootDashboardRoute';
}

class RootDashboardRouteArgs {
  const RootDashboardRouteArgs({
    this.key,
    required this.currentIndex,
  });

  final _i19.Key? key;

  final int currentIndex;

  @override
  String toString() {
    return 'RootDashboardRouteArgs{key: $key, currentIndex: $currentIndex}';
  }
}

/// generated route for
/// [_i7.CourseInfoScreen]
class CourseInfoScreenRoute
    extends _i18.PageRouteInfo<CourseInfoScreenRouteArgs> {
  CourseInfoScreenRoute({
    _i19.Key? key,
    required _i20.CourseModel course,
  }) : super(
          CourseInfoScreenRoute.name,
          path: '/course-info',
          args: CourseInfoScreenRouteArgs(
            key: key,
            course: course,
          ),
        );

  static const String name = 'CourseInfoScreenRoute';
}

class CourseInfoScreenRouteArgs {
  const CourseInfoScreenRouteArgs({
    this.key,
    required this.course,
  });

  final _i19.Key? key;

  final _i20.CourseModel course;

  @override
  String toString() {
    return 'CourseInfoScreenRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i8.IntroductionAnimationScreen]
class IntroductionAnimationScreenRoute extends _i18.PageRouteInfo<void> {
  const IntroductionAnimationScreenRoute()
      : super(
          IntroductionAnimationScreenRoute.name,
          path: '/introduction-animation-screen',
        );

  static const String name = 'IntroductionAnimationScreenRoute';
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileScreenRoute extends _i18.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/ProfileScreen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i10.UpdateProfileScreen]
class UpdateProfileScreenRoute
    extends _i18.PageRouteInfo<UpdateProfileScreenRouteArgs> {
  UpdateProfileScreenRoute({
    _i19.Key? key,
    _i21.UserProfileModel? userProfileModel,
  }) : super(
          UpdateProfileScreenRoute.name,
          path: '/update_profile_screen',
          args: UpdateProfileScreenRouteArgs(
            key: key,
            userProfileModel: userProfileModel,
          ),
        );

  static const String name = 'UpdateProfileScreenRoute';
}

class UpdateProfileScreenRouteArgs {
  const UpdateProfileScreenRouteArgs({
    this.key,
    this.userProfileModel,
  });

  final _i19.Key? key;

  final _i21.UserProfileModel? userProfileModel;

  @override
  String toString() {
    return 'UpdateProfileScreenRouteArgs{key: $key, userProfileModel: $userProfileModel}';
  }
}

/// generated route for
/// [_i11.ViewCourseContentScreen]
class ViewCourseContentScreenRoute
    extends _i18.PageRouteInfo<ViewCourseContentScreenRouteArgs> {
  ViewCourseContentScreenRoute({
    _i19.Key? key,
    required List<_i22.CourseSectionModel> sections,
  }) : super(
          ViewCourseContentScreenRoute.name,
          path: '/view_course_content_screen',
          args: ViewCourseContentScreenRouteArgs(
            key: key,
            sections: sections,
          ),
        );

  static const String name = 'ViewCourseContentScreenRoute';
}

class ViewCourseContentScreenRouteArgs {
  const ViewCourseContentScreenRouteArgs({
    this.key,
    required this.sections,
  });

  final _i19.Key? key;

  final List<_i22.CourseSectionModel> sections;

  @override
  String toString() {
    return 'ViewCourseContentScreenRouteArgs{key: $key, sections: $sections}';
  }
}

/// generated route for
/// [_i12.ReadCourseContentScreen]
class ReadCourseContentScreenRoute
    extends _i18.PageRouteInfo<ReadCourseContentScreenRouteArgs> {
  ReadCourseContentScreenRoute({
    _i19.Key? key,
    required _i20.CourseModel course,
  }) : super(
          ReadCourseContentScreenRoute.name,
          path: '/read_course_content_screen',
          args: ReadCourseContentScreenRouteArgs(
            key: key,
            course: course,
          ),
        );

  static const String name = 'ReadCourseContentScreenRoute';
}

class ReadCourseContentScreenRouteArgs {
  const ReadCourseContentScreenRouteArgs({
    this.key,
    required this.course,
  });

  final _i19.Key? key;

  final _i20.CourseModel course;

  @override
  String toString() {
    return 'ReadCourseContentScreenRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i13.PdfViewerScreen]
class PdfViewerScreenRoute
    extends _i18.PageRouteInfo<PdfViewerScreenRouteArgs> {
  PdfViewerScreenRoute({
    _i19.Key? key,
    required String url,
    required String label,
  }) : super(
          PdfViewerScreenRoute.name,
          path: '/PdfViewerScreen',
          args: PdfViewerScreenRouteArgs(
            key: key,
            url: url,
            label: label,
          ),
        );

  static const String name = 'PdfViewerScreenRoute';
}

class PdfViewerScreenRouteArgs {
  const PdfViewerScreenRouteArgs({
    this.key,
    required this.url,
    required this.label,
  });

  final _i19.Key? key;

  final String url;

  final String label;

  @override
  String toString() {
    return 'PdfViewerScreenRouteArgs{key: $key, url: $url, label: $label}';
  }
}

/// generated route for
/// [_i14.SingleCategoryScreen]
class SingleCategoryScreenRoute
    extends _i18.PageRouteInfo<SingleCategoryScreenRouteArgs> {
  SingleCategoryScreenRoute({
    _i19.Key? key,
    required _i23.CategoriesModel category,
  }) : super(
          SingleCategoryScreenRoute.name,
          path: '/single_category_screen',
          args: SingleCategoryScreenRouteArgs(
            key: key,
            category: category,
          ),
        );

  static const String name = 'SingleCategoryScreenRoute';
}

class SingleCategoryScreenRouteArgs {
  const SingleCategoryScreenRouteArgs({
    this.key,
    required this.category,
  });

  final _i19.Key? key;

  final _i23.CategoriesModel category;

  @override
  String toString() {
    return 'SingleCategoryScreenRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i15.PaymentScreen]
class PaymentScreenRoute extends _i18.PageRouteInfo<void> {
  const PaymentScreenRoute()
      : super(
          PaymentScreenRoute.name,
          path: 'payment_screen',
        );

  static const String name = 'PaymentScreenRoute';
}

/// generated route for
/// [_i16.ForgotPasswordScreen]
class ForgotPasswordScreenRoute extends _i18.PageRouteInfo<void> {
  const ForgotPasswordScreenRoute()
      : super(
          ForgotPasswordScreenRoute.name,
          path: '/forgot-password-screen',
        );

  static const String name = 'ForgotPasswordScreenRoute';
}

/// generated route for
/// [_i17.AboutUsScreen]
class AboutUsScreenRoute extends _i18.PageRouteInfo<void> {
  const AboutUsScreenRoute()
      : super(
          AboutUsScreenRoute.name,
          path: '/about_us',
        );

  static const String name = 'AboutUsScreenRoute';
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i18.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}
