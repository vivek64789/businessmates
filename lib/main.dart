import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'core/design/light_theme.dart';
import 'routes.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/design/size_config.dart';
import 'injection.dart';
import 'presentation/cubits/auth/auth_cubit.dart';
import 'presentation/cubits/image_cubit/image_cubit.dart';
import 'presentation/cubits/manage_categories/manage_categories_cubit.dart';
import 'presentation/cubits/manage_course/manage_course_cubit.dart';
import 'presentation/cubits/manage_course_lesson/manage_course_lesson_cubit.dart';
import 'presentation/cubits/manage_course_section/manage_course_section_cubit.dart';
import 'presentation/cubits/manage_profile/manage_profile_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FlutterDownloader.initialize(
      debug:
          true, // optional: set to false to disable printing logs to console (default: true)
      ignoreSsl:
          true // option: set to false to disable working with http links (default: false)
      );
  Stripe.publishableKey =
      "pk_test_51Ih5GzHmsIXlXA5B2yqi16ahSis9qPIV9w1dX3M9nsdesNiEIaj7EgqByz8eN0TJlyRZrD8kDKaKdyifNybdZtue00w4N0rVya";

  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, layout) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(layout, orientation);
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) => getIt<AuthCubit>(),
                ),
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) => getIt<ManageCourseCubit>(),
                ),
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) =>
                      getIt<ManageCourseSectionCubit>(),
                ),
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) =>
                      getIt<ManageCourseLessonCubit>(),
                ),
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) =>
                      getIt<ManageCategoriesCubit>(),
                ),
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) => getIt<ManageProfileCubit>(),
                ),
                BlocProvider(
                  lazy: false,
                  create: (BuildContext context) => getIt<ImageCubit>(),
                ),
              ],
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'Business Mate',
                theme: lightTheme(),
                routeInformationParser: appRouter.defaultRouteParser(),
                routerDelegate: appRouter.delegate(),
                builder: (context, router) => router!,
              ),
            );
          },
        );
      },
    );
  }
}


// #0D53F3

