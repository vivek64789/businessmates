import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../routes.gr.dart';
import '../../cubits/manage_course/manage_course_cubit.dart';
import '../../widgets/feature_item.dart';

class MyCourseScreen extends StatefulWidget {
  const MyCourseScreen({Key? key}) : super(key: key);
  static const String routeName = '/MyCourseScreen';

  @override
  _MyCourseScreenState createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  late final ManageCourseCubit _manageCourseCubit;
  @override
  void initState() {
    _manageCourseCubit = context.read<ManageCourseCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Enrolled Courses")),
      body: getCourses(),
    );
  }

  getCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.userEnrolledCourses.isNotEmpty
            ? ListView.builder(
                itemCount: state.userEnrolledCourses.length,
                itemBuilder: (context, index) {
                  return FeatureItem(
                    onTap: () {
                      context.router.push(CourseInfoScreenRoute(
                        course: state.userEnrolledCourses[index],
                      ));
                    },
                    data: state.userEnrolledCourses[index],
                  );
                },
              )
            : SizedBox(
                child: Center(
                  child: Column(
                    children: [
                      Lottie.network(
                          "https://lottie.host/52a507fb-fc30-475e-a493-19cd4f1bbad1/UajkK0G7Nx.json"),
                      const Text("No Courses Available",
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
