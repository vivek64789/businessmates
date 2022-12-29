part of 'manage_categories_cubit.dart';

enum LoadingStatus { initial, loading, loaded, error }

@freezed
class ManageCategoriesState with _$ManageCategoriesState {
  const factory ManageCategoriesState({
    required bool isInProgress,
    required Option<ManageCategoriesFailure> failureMessageOption,
    required LoadingStatus manageCategoriesLoadingStatus,
    required List<CategoriesModel> categories,
  }) = _ManageCategoriesState;

  factory ManageCategoriesState.empty() => ManageCategoriesState(
        failureMessageOption: none(),
        isInProgress: false,
        manageCategoriesLoadingStatus: LoadingStatus.initial,
        categories: [],
      );
}
