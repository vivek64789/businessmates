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

  // get number of lessons in a course
  static int getNumberOfLessons(CourseModel course) {
    int numberOfLessons = 0;
    for (var section in course.sections!) {
      numberOfLessons += section.lessons!.length;
    }
    return numberOfLessons;
  }

  // get number of hours in a course
  static double getNumberOfMinutesOfCourses(CourseModel course) {
    double numberOfMinutes = 0;
    for (var section in course.sections!) {
      for (var lesson in section.lessons!) {
        numberOfMinutes += double.parse(lesson.duration);
      }
    }
    return numberOfMinutes;
  }
}
