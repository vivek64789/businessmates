import 'package:auto_route/auto_route.dart';
import 'package:business_mates/core/helpers/my_shimmer.dart';
import 'package:business_mates/data/models/course/course_model.dart';
import 'package:business_mates/data/models/course_categories_model.dart';
import 'package:business_mates/presentation/cubits/manage_categories/manage_categories_cubit.dart';
import 'package:business_mates/presentation/cubits/manage_course/manage_course_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:business_mates/presentation/widgets/category_box.dart';
import 'package:business_mates/presentation/widgets/feature_item.dart';
import 'package:business_mates/presentation/widgets/notification_box.dart';
import 'package:business_mates/presentation/widgets/recommend_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/color.dart';
import '../../../core/utils/data.dart';
import '../../../routes.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ManageCategoriesCubit _manageCategoriesCubit;
  late final ManageCourseCubit _manageCourseCubit;
  @override
  void initState() {
    _manageCategoriesCubit = context.read<ManageCategoriesCubit>();
    _manageCourseCubit = context.read<ManageCourseCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profile["name"]!,
                style: const TextStyle(
                  color: labelColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Good Morning!",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  )),
            ],
          )),
          NotificationBox(
            notifiedNumber: 1,
            onTap: () {},
          )
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          getCategories(),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text("Featured",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          getFeature(),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recommended",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 14, color: darker),
                ),
              ],
            ),
          ),
          getRecommend(),
        ]),
      ),
    );
  }

  int selectedCollection = 0;
  getCategories() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      scrollDirection: Axis.horizontal,
      child: StreamBuilder<List<CategoriesModel>>(
        stream: _manageCategoriesCubit.streamAllCourseCategories(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Row(
                  children: List.generate(
                    snapshot.data!.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: CategoryBox(
                        selectedColor: Colors.white,
                        data: snapshot.data![index],
                        onTap: () {},
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: MyShimmer(
                      // height: 1,
                      ),
                );
        },
      ),
    );
  }

  getFeature() {
    return StreamBuilder<List<CourseModel>>(
      stream: _manageCourseCubit.streamAllCourses(),
      builder: (context, snapshot) {
        return snapshot.hasData && snapshot.data!.isNotEmpty
            ? CarouselSlider(
                options: CarouselOptions(
                  height: 290,
                  enlargeCenterPage: true,
                  disableCenter: true,
                  viewportFraction: .75,
                ),
                items: List.generate(
                  snapshot.data!.length,
                  (index) => FeatureItem(
                    onTap: () {
                      // context
                      //     .read<ManageCourseCubit>()
                      //     .setSelectedFeaturedCourse(
                      //       courseModel: snapshot.data![index],
                      //     );
                      context.router.push(CourseInfoScreenRoute(
                        course: snapshot.data![index],
                      ));
                    },
                    data: snapshot.data![index],
                  ),
                ),
              )
            : SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              );
      },
    );
  }

  getRecommend() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              recommends.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RecommendItem(
                    data: recommends[index],
                    onTap: () {},
                  )))),
    );
  }
}
