import 'package:business_mates/data/models/course/course_section_model.dart';

import '../../data/models/course/course_model.dart';

class CourseUtils {
  static String getCourseName(String courseCode) {
    return courseCode.split('-')[0];
  }

  static String getCourseSection(String courseCode) {
    return courseCode.split('-')[1];
  }

  static String getCourseCode(String courseName, String courseSection) {
    return '$courseName-$courseSection';
  }

  // get number of sections in a course
  static int getNumberOfSections(CourseModel course) {
    return course.sections!.length;
  }

  static int getDurationOfSection(CourseSectionModel sectionModel) {
    int duration = 0;
    for (var lesson in sectionModel.lessons!) {
      duration += int.parse(lesson.duration);
    }
    return duration;
  }

  // get number of lessons in a course
  static int getNumberOfLessons(CourseModel course) {
    int numberOfLessons = 0;
    for (var section in course.sections!) {
      numberOfLessons += section.lessons!.length;
    }
    return numberOfLessons;
  }

  // get number of hours in a course
  static int getNumberOfMinutesOfCourses(CourseModel course) {
    int numberOfMinutes = 0;
    for (var section in course.sections!) {
      for (var lesson in section.lessons!) {
        numberOfMinutes += int.parse(lesson.duration);
      }
    }
    return numberOfMinutes;
  }
}
