import 'package:business_mates/data/models/course/course_section_model.dart';
import 'package:flutter/material.dart';

import 'widgets/show_course_section_and_lesson_widget.dart';

class ViewCourseContentScreen extends StatelessWidget {
  static const String routeName = '/view_course_content_screen';
  const ViewCourseContentScreen({super.key, required this.sections});
  final List<CourseSectionModel> sections;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: 1.0,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          itemCount: sections.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPanel(
              section: sections[index],
              index: index,
            );
          },
        ),
      ),
    );
  }

  Widget _buildPanel(
      {required CourseSectionModel section, required int index}) {
    return ShowCourseSectionAndLessonWidget(
      section: section,
      index: index,
    );
  }
}
