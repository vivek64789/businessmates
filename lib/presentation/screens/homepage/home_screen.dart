import 'package:auto_route/auto_route.dart';
import 'package:business_mates/core/helpers/my_shimmer.dart';
import 'package:business_mates/data/models/course/course_model.dart';
import 'package:business_mates/data/models/course_categories_model.dart';
import 'package:business_mates/presentation/cubits/auth/auth_cubit.dart';
import 'package:business_mates/presentation/cubits/manage_categories/manage_categories_cubit.dart';
import 'package:business_mates/presentation/cubits/manage_course/manage_course_cubit.dart';
import 'package:business_mates/presentation/cubits/manage_profile/manage_profile_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:business_mates/presentation/widgets/category_box.dart';
import 'package:business_mates/presentation/widgets/feature_item.dart';
import 'package:business_mates/presentation/widgets/recommend_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/theme/color.dart';
import '../../../core/utils/data.dart';
import '../../../routes.gr.dart';
import '../authentication/login_screen.dart';

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
    _manageCourseCubit.getEnrolledCourses(
        userId: context.read<AuthCubit>().state.currentLoggedInUser!.uid);
    _manageCourseCubit.getAllFeaturedCourses();
    _manageCourseCubit.getAllFreeCourses();
    _manageCourseCubit.getAllNewCourses();
    _manageCourseCubit.getAllPopularCourses();
    _manageCourseCubit.getAllTrendingCourses();
    _manageCourseCubit.getAllCourses();

    super.initState();
  }

  _buildAllCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.manageCoursesLoadingStatus == LoadingStatus.loading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              )
            : state.allCourses.isNotEmpty
                ? CarouselSlider(
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                    ),
                    items: List.generate(
                      state.allCourses.length,
                      (index) => FeatureItem(
                        onTap: () {
                          context.router.push(CourseInfoScreenRoute(
                            course: state.allCourses[index],
                          ));
                        },
                        data: state.allCourses[index],
                      ),
                    ),
                  )
                : _buildNoCourseFound();
      },
    );
  }

  _buildFeaturedCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.manageCoursesLoadingStatus == LoadingStatus.loading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              )
            : state.featuredCourses.isNotEmpty
                ? CarouselSlider(
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                    ),
                    items: List.generate(
                      state.featuredCourses.length,
                      (index) => FeatureItem(
                        onTap: () {
                          context.router.push(CourseInfoScreenRoute(
                            course: state.featuredCourses[index],
                          ));
                        },
                        data: state.featuredCourses[index],
                      ),
                    ),
                  )
                : _buildNoCourseFound();
      },
    );
  }

  Center _buildNoCourseFound() {
    return Center(
      child: Lottie.network(
        "https://lottie.host/52a507fb-fc30-475e-a493-19cd4f1bbad1/UajkK0G7Nx.json",
        width: 200,
      ),
    );
  }

  _buildNewCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.manageCoursesLoadingStatus == LoadingStatus.loading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              )
            : state.newCourses.isNotEmpty
                ? CarouselSlider(
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                    ),
                    items: List.generate(
                      state.newCourses.length,
                      (index) => FeatureItem(
                        onTap: () {
                          context.router.push(CourseInfoScreenRoute(
                            course: state.featuredCourses[index],
                          ));
                        },
                        data: state.newCourses[index],
                      ),
                    ),
                  )
                : _buildNoCourseFound();
      },
    );
  }

  _buildTrendingCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.manageCoursesLoadingStatus == LoadingStatus.loading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              )
            : state.trendingCourses.isNotEmpty
                ? CarouselSlider(
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                    ),
                    items: List.generate(
                      state.trendingCourses.length,
                      (index) => FeatureItem(
                        onTap: () {
                          context.router.push(CourseInfoScreenRoute(
                            course: state.trendingCourses[index],
                          ));
                        },
                        data: state.trendingCourses[index],
                      ),
                    ),
                  )
                : _buildNoCourseFound();
      },
    );
  }

  _buildFreeCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.manageCoursesLoadingStatus == LoadingStatus.loading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              )
            : state.freeCourses.isNotEmpty
                ? CarouselSlider(
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                    ),
                    items: List.generate(
                      state.freeCourses.length,
                      (index) => FeatureItem(
                        onTap: () {
                          context.router.push(CourseInfoScreenRoute(
                            course: state.freeCourses[index],
                          ));
                        },
                        data: state.freeCourses[index],
                      ),
                    ),
                  )
                : _buildNoCourseFound();
      },
    );
  }

  _buildPopularCourses() {
    return BlocBuilder<ManageCourseCubit, ManageCourseState>(
      builder: (context, state) {
        return state.manageCoursesLoadingStatus == LoadingStatus.loading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: MyShimmer(
                  height: 10,
                ),
              )
            : state.popularCourses.isNotEmpty
                ? CarouselSlider(
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      viewportFraction: .75,
                    ),
                    items: List.generate(
                      state.popularCourses.length,
                      (index) => FeatureItem(
                        onTap: () {
                          context.router.push(CourseInfoScreenRoute(
                            course: state.popularCourses[index],
                          ));
                        },
                        data: state.popularCourses[index],
                      ),
                    ),
                  )
                : _buildNoCourseFound();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
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
                context.watch<ManageProfileCubit>().state.userProfileModel.name,
                style: const TextStyle(
                  color: labelColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoWidget(height: MediaQuery.of(context).size.height * 0.06),
                  const Text(
                    "Business Mates",
                  ),
                ],
              ),
            ],
          )),
          // NotificationBox(
          //   notifiedNumber: 1,
          //   onTap: () {},
          // )
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
            child: Text("All Courses",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          // getFeature(),
          _buildAllCourses(),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text("Featured Courses",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          _buildFeaturedCourses(),
          // const Padding(
          //   padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          //   child: Text("Free Courses",
          //       style: TextStyle(
          //         color: textColor,
          //         fontWeight: FontWeight.w600,
          //         fontSize: 24,
          //       )),
          // ),
          // _buildFreeCourses(),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text("New Courses",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          _buildNewCourses(),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text("Popular Courses",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          _buildPopularCourses(),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text("Trending Courses",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          _buildTrendingCourses(),
          const SizedBox(
            height: 15,
          ),
          // Container(
          //   margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: const [
          //       Text(
          //         "Recommended",
          //         style: TextStyle(
          //             fontSize: 22,
          //             fontWeight: FontWeight.w600,
          //             color: textColor),
          //       ),
          //       Text(
          //         "See all",
          //         style: TextStyle(fontSize: 14, color: darker),
          //       ),
          //     ],
          //   ),
          // ),
          // getRecommend(),
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
                        onTap: () {
                          context.router.push(
                            SingleCategoryScreenRoute(
                              category: snapshot.data![index],
                            ),
                          );
                        },
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
