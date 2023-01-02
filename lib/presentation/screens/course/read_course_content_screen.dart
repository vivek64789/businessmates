import 'package:business_mates/core/design/app_icons.dart';
import 'package:business_mates/data/models/course/course_lesson_model.dart';
import 'package:business_mates/data/models/course/course_model.dart';
import 'package:business_mates/data/models/course/course_section_model.dart';
import 'package:business_mates/presentation/screens/course/widgets/course_content_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ReadCourseContentScreen extends StatefulWidget {
  static const String routeName = '/read_course_content_screen';
  const ReadCourseContentScreen({super.key, required this.course});
  final CourseModel course;

  @override
  State<ReadCourseContentScreen> createState() =>
      _ReadCourseContentScreenState();
}

class _ReadCourseContentScreenState extends State<ReadCourseContentScreen>
    with TickerProviderStateMixin {
  // final _sectionTabController = TabController(length: 3, vsync: this);

  late TabController _sectionTabController;
  late TabController _lessonTabController;
  late List<CourseLessonModel> _lessonsOfSection;
  late List<CourseSectionModel> _sections;
  String? videoId;

  late YoutubePlayerController _playerController;

  @override
  void initState() {
    super.initState();
    _sectionTabController =
        TabController(vsync: this, length: widget.course.sections!.length);
    _lessonTabController = TabController(
        vsync: this,
        length: widget.course.sections!.isEmpty
            ? 0
            : widget.course.sections![0].lessons!.length);
    _sections = widget.course.sections!.map((e) => e).toList();
    _lessonsOfSection =
        _sections.isEmpty ? [] : _sections[0].lessons!.map((e) => e).toList();
  }

  _handleTapOnSectionTab(int index) {
    setState(() {
      _lessonsOfSection = _sections[index].lessons!.map((e) => e).toList();
      _lessonTabController =
          TabController(vsync: this, length: _lessonsOfSection.length);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _sectionTabController.dispose();
    _lessonTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // fetch the content of the course
    // build the content of the course
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(widget.course.name),
        actions: [
          // show all the number of lessons
          IconButton(
            onPressed: () {
              // show the list of lessons
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: const BouncingScrollPhysics(),
                    itemCount: widget.course.sections!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CourseContentNavigationWidget(
                        section: widget.course.sections![index],
                        i: index,
                        onTap: (sectionIndex, lessonIndex) {
                          setState(
                            () {
                              _lessonsOfSection = _sections[sectionIndex]
                                  .lessons!
                                  .map((e) => e)
                                  .toList();
                              // controllers
                              _lessonTabController = TabController(
                                  vsync: this,
                                  length:
                                      _sections[sectionIndex].lessons!.length);
                              _sectionTabController.animateTo(sectionIndex);
                              _lessonTabController.animateTo(lessonIndex);
                            },
                          );
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              );
            },
            icon: const Icon(BMIcon.filter),
          ),
        ],
        bottom: TabBar(
          labelColor: Theme.of(context).colorScheme.primary,
          controller: _lessonTabController,
          isScrollable: true,
          tabs: _lessonsOfSection
              .map((lesson) => Tab(text: lesson.name))
              .toList(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.01,
        ),
        child: TabBar(
          labelColor: Theme.of(context).colorScheme.primary,
          onTap: _handleTapOnSectionTab,
          labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
          controller: _sectionTabController,
          isScrollable: true,
          tabs: widget.course.sections!
              .map((section) => Tab(text: section.name))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _lessonTabController,
        children: _lessonsOfSection.map(
          (lesson) {
            // url
            final videoUrl = lesson.videoUrl;
            // convert url to id
            videoId = YoutubePlayer.convertUrlToId(videoUrl);
            if (lesson.videoUrl.isNotEmpty) {
              _playerController = YoutubePlayerController(
                initialVideoId: videoId!,
                flags: const YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              );
            }

            return Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // show if image avaialble
                  if (lesson.imageUrl.isNotEmpty)
                    Image.network(
                      lesson.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  const SizedBox(height: 16),
                  // show pdf if available
                  // if (lesson.pdfUrl.isNotEmpty)
                  //   Container(
                  //     height: 200,
                  //     color: Colors.grey,
                  //   ),

                  // show the description
                  if (lesson.videoUrl.isNotEmpty)
                    YoutubePlayerBuilder(
                      player: YoutubePlayer(
                        controller: _playerController,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor:
                            Theme.of(context).colorScheme.primary,
                        progressColors: const ProgressBarColors(
                          backgroundColor: Colors.grey,
                          playedColor: Colors.red,
                          handleColor: Colors.blue,
                          bufferedColor: Colors.white,
                        ),
                      ),
                      builder: (context, player) {
                        return Column(
                          children: [player],
                        );
                      },
                    ),

                  Text(
                    lesson.description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
