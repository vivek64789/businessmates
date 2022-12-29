// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:business_mates/presentation/cubits/auth/auth_cubit.dart' as _i3;
import 'package:business_mates/presentation/cubits/image_cubit/image_cubit.dart'
    as _i4;
import 'package:business_mates/presentation/cubits/manage_categories/manage_categories_cubit.dart'
    as _i5;
import 'package:business_mates/presentation/cubits/manage_course/manage_course_cubit.dart'
    as _i6;
import 'package:business_mates/presentation/cubits/manage_course_lesson/manage_course_lesson_cubit.dart'
    as _i7;
import 'package:business_mates/presentation/cubits/manage_course_section/manage_course_section_cubit.dart'
    as _i8;
import 'package:business_mates/presentation/cubits/manage_profile/manage_profile_cubit.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.ImageCubit>(() => _i4.ImageCubit());
    gh.lazySingleton<_i5.ManageCategoriesCubit>(
        () => _i5.ManageCategoriesCubit());
    gh.lazySingleton<_i6.ManageCourseCubit>(() => _i6.ManageCourseCubit());
    gh.lazySingleton<_i7.ManageCourseLessonCubit>(
        () => _i7.ManageCourseLessonCubit());
    gh.lazySingleton<_i8.ManageCourseSectionCubit>(
        () => _i8.ManageCourseSectionCubit());
    gh.lazySingleton<_i9.ManageProfileCubit>(() => _i9.ManageProfileCubit());
    return this;
  }
}
