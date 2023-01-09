import 'package:auto_route/auto_route.dart';
import 'package:business_mates/data/models/course_categories_model.dart';
import 'package:business_mates/presentation/cubits/manage_course/manage_course_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../routes.gr.dart';
import '../../widgets/feature_item.dart';

class SingleCategoryScreen extends StatefulWidget {
  static const String routeName = '/single_category_screen';
  const SingleCategoryScreen({super.key, required this.category});

  final CategoriesModel category;

  @override
  State<SingleCategoryScreen> createState() => _SingleCategoryScreenState();
}

class _SingleCategoryScreenState extends State<SingleCategoryScreen> {
  late final ManageCourseCubit _manageCourseCubit;
  @override
  void initState() {
    _manageCourseCubit = context.read<ManageCourseCubit>();
    _manageCourseCubit.getAllCoursesOfCategory(categoryId: widget.category.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Course of ${widget.category.name}")),
      body: getCourses(),
    );
  }

  getCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.coursesOfCategory.isNotEmpty
            ? ListView.builder(
                itemCount: state.coursesOfCategory.length,
                itemBuilder: (context, index) {
                  return FeatureItem(
                    onTap: () {
                      context.router.push(CourseInfoScreenRoute(
                        course: state.coursesOfCategory[index],
                      ));
                    },
                    data: state.coursesOfCategory[index],
                  );
                },
              )
            : Container(
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
