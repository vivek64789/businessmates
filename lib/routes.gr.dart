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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import 'data/models/course/course_model.dart' as _i15;
import 'data/models/course/course_section_model.dart' as _i17;
import 'data/models/user_profile_model.dart' as _i16;
import 'presentation/screens/authentication/login_screen.dart' as _i2;
import 'presentation/screens/authentication/register_screen.dart' as _i1;
import 'presentation/screens/authentication/verify_otp_screen.dart' as _i3;
import 'presentation/screens/course/read_course_content_screen.dart' as _i11;
import 'presentation/screens/homepage/course_info_screen.dart' as _i6;
import 'presentation/screens/homepage/home_screen.dart' as _i4;
import 'presentation/screens/homepage/profile_screen.dart' as _i8;
import 'presentation/screens/homepage/update_profile_screen.dart' as _i9;
import 'presentation/screens/homepage/view_course_content_screen.dart' as _i10;
import 'presentation/screens/introduction_animation/introduction_animation_screen.dart'
    as _i7;
import 'presentation/screens/root_dashboard.dart' as _i5;
import 'presentation/screens/splash_screen.dart' as _i12;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    RegisterScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RegisterScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    VerifyOTPScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.VerifyOTPScreen(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    RootDashboardRoute.name: (routeData) {
      final args = routeData.argsAs<RootDashboardRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.RootDashboard(
          key: args.key,
          currentIndex: args.currentIndex,
        ),
      );
    },
    CourseInfoScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CourseInfoScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.CourseInfoScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    IntroductionAnimationScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.IntroductionAnimationScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    UpdateProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileScreenRouteArgs>(
          orElse: () => const UpdateProfileScreenRouteArgs());
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.UpdateProfileScreen(
          key: args.key,
          userProfileModel: args.userProfileModel,
        ),
      );
    },
    ViewCourseContentScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ViewCourseContentScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ViewCourseContentScreen(
          key: args.key,
          sections: args.sections,
        ),
      );
    },
    ReadCourseContentScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ReadCourseContentScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.ReadCourseContentScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    SplashScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreen(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          RegisterScreenRoute.name,
          path: '/register-screen',
        ),
        _i13.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i13.RouteConfig(
          VerifyOTPScreenRoute.name,
          path: '/verify-otp-screen',
        ),
        _i13.RouteConfig(
          HomePageRoute.name,
          path: '/homepage',
        ),
        _i13.RouteConfig(
          RootDashboardRoute.name,
          path: '/Rootdashboard',
        ),
        _i13.RouteConfig(
          CourseInfoScreenRoute.name,
          path: '/course-info',
        ),
        _i13.RouteConfig(
          IntroductionAnimationScreenRoute.name,
          path: '/introduction-animation-screen',
        ),
        _i13.RouteConfig(
          ProfileScreenRoute.name,
          path: '/ProfileScreen',
        ),
        _i13.RouteConfig(
          UpdateProfileScreenRoute.name,
          path: '/update_profile_screen',
        ),
        _i13.RouteConfig(
          ViewCourseContentScreenRoute.name,
          path: '/view_course_content_screen',
        ),
        _i13.RouteConfig(
          ReadCourseContentScreenRoute.name,
          path: '/read_course_content_screen',
        ),
        _i13.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.RegisterScreen]
class RegisterScreenRoute extends _i13.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(
          RegisterScreenRoute.name,
          path: '/register-screen',
        );

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i13.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.VerifyOTPScreen]
class VerifyOTPScreenRoute extends _i13.PageRouteInfo<void> {
  const VerifyOTPScreenRoute()
      : super(
          VerifyOTPScreenRoute.name,
          path: '/verify-otp-screen',
        );

  static const String name = 'VerifyOTPScreenRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i13.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/homepage',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.RootDashboard]
class RootDashboardRoute extends _i13.PageRouteInfo<RootDashboardRouteArgs> {
  RootDashboardRoute({
    _i14.Key? key,
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

  final _i14.Key? key;

  final int currentIndex;

  @override
  String toString() {
    return 'RootDashboardRouteArgs{key: $key, currentIndex: $currentIndex}';
  }
}

/// generated route for
/// [_i6.CourseInfoScreen]
class CourseInfoScreenRoute
    extends _i13.PageRouteInfo<CourseInfoScreenRouteArgs> {
  CourseInfoScreenRoute({
    _i14.Key? key,
    required _i15.CourseModel course,
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

  final _i14.Key? key;

  final _i15.CourseModel course;

  @override
  String toString() {
    return 'CourseInfoScreenRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i7.IntroductionAnimationScreen]
class IntroductionAnimationScreenRoute extends _i13.PageRouteInfo<void> {
  const IntroductionAnimationScreenRoute()
      : super(
          IntroductionAnimationScreenRoute.name,
          path: '/introduction-animation-screen',
        );

  static const String name = 'IntroductionAnimationScreenRoute';
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileScreenRoute extends _i13.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/ProfileScreen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i9.UpdateProfileScreen]
class UpdateProfileScreenRoute
    extends _i13.PageRouteInfo<UpdateProfileScreenRouteArgs> {
  UpdateProfileScreenRoute({
    _i14.Key? key,
    _i16.UserProfileModel? userProfileModel,
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

  final _i14.Key? key;

  final _i16.UserProfileModel? userProfileModel;

  @override
  String toString() {
    return 'UpdateProfileScreenRouteArgs{key: $key, userProfileModel: $userProfileModel}';
  }
}

/// generated route for
/// [_i10.ViewCourseContentScreen]
class ViewCourseContentScreenRoute
    extends _i13.PageRouteInfo<ViewCourseContentScreenRouteArgs> {
  ViewCourseContentScreenRoute({
    _i14.Key? key,
    required List<_i17.CourseSectionModel> sections,
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

  final _i14.Key? key;

  final List<_i17.CourseSectionModel> sections;

  @override
  String toString() {
    return 'ViewCourseContentScreenRouteArgs{key: $key, sections: $sections}';
  }
}

/// generated route for
/// [_i11.ReadCourseContentScreen]
class ReadCourseContentScreenRoute
    extends _i13.PageRouteInfo<ReadCourseContentScreenRouteArgs> {
  ReadCourseContentScreenRoute({
    _i14.Key? key,
    required _i15.CourseModel course,
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

  final _i14.Key? key;

  final _i15.CourseModel course;

  @override
  String toString() {
    return 'ReadCourseContentScreenRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i12.SplashScreen]
class SplashScreen extends _i13.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}
