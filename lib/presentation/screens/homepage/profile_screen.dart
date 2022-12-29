import 'package:auto_route/auto_route.dart';
import '../../../core/design/app_icons.dart';
import '../../../core/helpers/my_shimmer.dart';
import '../../../data/models/user_profile_model.dart';
import '../../cubits/manage_profile/manage_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constants.dart';
import '../../../routes.gr.dart';
import '../../cubits/auth/auth_cubit.dart';
import '../../widgets/bm_button.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/ProfileScreen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final ManageProfileCubit manageProfileCubit;
  late final AuthCubit authCubit;

  @override
  void initState() {
    manageProfileCubit = context.read<ManageProfileCubit>();
    authCubit = context.read<AuthCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final AuthCubit authCubit = context.read<AuthCubit>();
    return SizedBox(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: StreamBuilder<UserProfileModel>(
          stream: manageProfileCubit.streamUserProfile(
              uid: authCubit.state.currentLoggedInUser!.uid),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? Column(
                    children: <Widget>[
                      // design for the top of the screen

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10000),
                                  bottomRight: Radius.circular(10000),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            // create profile image widget
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              // top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 15,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                    snapshot.data!.imageUrl.isEmpty
                                        ? Constants.placeholderImage
                                        : snapshot.data!.imageUrl,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10000),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 15,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.router.push(
                              UpdateProfileScreenRoute(
                                userProfileModel: snapshot.data!,
                              ),
                            );
                          },
                          icon: const Icon(
                            BMIcon.pen_filled,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // show email
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: ListView(
                          children: [
                            ProfileTileWidget(
                              icon: BMIcon.map_marker,
                              title: snapshot.data!.name,
                              label: "Full Name",
                            ),
                            ProfileTileWidget(
                              icon: BMIcon.envelope,
                              title: snapshot.data!.email,
                              label: "Email",
                            ),
                            ProfileTileWidget(
                                icon: BMIcon.phone,
                                title: snapshot.data!.phone,
                                label: "Phone"),
                            ProfileTileWidget(
                              icon: BMIcon.map_marker,
                              label: "City",
                              title: snapshot.data!.city,
                            ),
                            ProfileTileWidget(
                                icon: BMIcon.map_marker,
                                label: "State",
                                title: snapshot.data!.state),
                            ProfileTileWidget(
                                icon: BMIcon.map_marker,
                                label: "Address",
                                title: snapshot.data!.address),
                            ProfileTileWidget(
                                icon: BMIcon.map_marker,
                                label: "Country",
                                title: snapshot.data!.country),
                          ],
                        ),
                      ),

                      BMButton(
                        onPressed: () {
                          //create ui to confirm logout with modal bottom sheet

                          context.read<AuthCubit>().signOut();
                          context.router.replaceAll([const LoginScreenRoute()]);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Logged out'),
                            ),
                          );
                        },
                        text: "Logout",
                        color: Colors.red,
                      ),
                    ],
                  )
                : MyShimmer(
                    height: 10,
                  );
          },
        ),
      ),
    );
  }
}

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
