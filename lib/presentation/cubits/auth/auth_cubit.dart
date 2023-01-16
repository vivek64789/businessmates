import 'dart:async';
import 'dart:io';

import 'package:business_mates/data/models/user_profile_model.dart';

import '../../../core/utils/injectable_module.dart';
import '../../../di/injector.dart';
import '../../../domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/auth_failure.dart';
import '../../../core/utils/cache_constants.dart';
import '../../../data/models/auth_user_model.dart';
import '../manage_categories/manage_categories_cubit.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  late final Repository _repository;
  late StreamSubscription<User>? _authUserSubscription;

  AuthCubit() : super(AuthState.empty()) {
    _repository = repository;
    _authUserSubscription =
        _repository.authStateChanges().listen(_listenAuthStateChangesStream);
  }

  // set is app first time
  Future<void> setIsAppFirstTime(bool value) async {
    final result = await (await sharedPreferences)
        .setBool(CacheConstantsKeys.IS_APP_FIRST_TIME, value);
    emit(state.copyWith(isAppFirstTime: result, isAppFirstTimeChecking: false));
  }

  // check is app first time
  Future<void> checkIsAppFirstTime() async {
    final value =
        (await sharedPreferences).getBool(CacheConstantsKeys.IS_APP_FIRST_TIME);
    if (value == null) {
      emit(
        state.copyWith(
          isAppFirstTime: true,
          isAppFirstTimeChecking: false,
        ),
      );
    } else {
      emit(state.copyWith(
        isAppFirstTime: value,
        isAppFirstTimeChecking: false,
      ));
    }
  }

  Future<void> _listenAuthStateChangesStream(User authUser) async {
    print("I am being called");
    if (authUser.uid.isNotEmpty) {
      emit(
        state.copyWith(
          currentLoggedInUser: authUser,
          isUserLoggedIn: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isUserLoggedIn: false,
        ),
      );
    }
  }

  Future<User?> getCurrentUser() async {
    emit(state.copyWith(
        isInProgress: true,
        getCurrentUserLoadingStatus: LoadingStatus.loading));
    try {
      await firebaseAuth.currentUser?.reload();
      emit(state.copyWith(
          isInProgress: false,
          getCurrentUserLoadingStatus: LoadingStatus.loaded));
    } catch (e) {
      emit(state.copyWith(
          isInProgress: false,
          getCurrentUserLoadingStatus: LoadingStatus.error));
    }

    return firebaseAuth.currentUser;
  }

  Future<void> sendResetPasswordLink({required String email}) async {
    await _repository.sendResetPasswordLink(email: email);
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(
      state.copyWith(
        loginLoadingStatus: LoadingStatus.loading,
        failureMessageOption: none(),
      ),
    );
    final result = await _repository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
        (failure) => emit(
              state.copyWith(
                loginLoadingStatus: LoadingStatus.error,
                failureMessageOption: some(failure),
              ),
            ), (success) {
      emit(state.copyWith(
        loginLoadingStatus: LoadingStatus.loaded,
        currentLoggedInUser: success,
      ));
    });
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(
      state.copyWith(
        registerLoadingStatus: LoadingStatus.loading,
        failureMessageOption: none(),
      ),
    );
    final result = await _repository.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
        (failure) => emit(
              state.copyWith(
                registerLoadingStatus: LoadingStatus.error,
                failureMessageOption: some(failure),
              ),
            ), (success) {
      emit(state.copyWith(
        registerLoadingStatus: LoadingStatus.loaded,
        currentLoggedInUser: success,
      ));
    });
  }

  // recend email verification
  Future<void> sendEmailVerification() async {
    await _repository.sendEmailVerification();
  }

  Future<void> signOut() async {
    await _repository.signOut();
  }

  // forgot password
  Future<void> sendPasswordResetEmail({required String email}) async {
    emit(state.copyWith(
      sendResetPasswordLinkLoadingStatus: LoadingStatus.loading,
      failureMessageOption: none(),
    ));
    final value = await _repository.sendPasswordResetEmail(email: email);
    value.fold(
      (l) => emit(
        state.copyWith(
          failureMessageOption: some(l),
          sendResetPasswordLinkLoadingStatus: LoadingStatus.error,
        ),
      ),
      (r) => emit(
        state.copyWith(
          sendResetPasswordLinkLoadingStatus: LoadingStatus.loaded,
        ),
      ),
    );
  }

  // change password
  Future<void> changePassword({required String password}) async {
    await _repository.changePassword(password: password);
  }

  // confirm password reset
  Future<void> confirmPasswordReset({
    required String code,
    required String password,
  }) async {
    await _repository.confirmPasswordReset(
      code: code,
      password: password,
    );
  }

  // upload profile image
  Future<void> uploadUserProfileImage({
    required String uid,
    required File image,
  }) async {
    await _repository.uploadUserProfileImage(
      uid: uid,
      image: image,
    );
  }

  

  // get user profile

  Future<void> getUserProfile() async {
    emit(state.copyWith(
        getCurrentUserLoadingStatus: LoadingStatus.loading,
        getUserProfileLoadingStatus: LoadingStatus.loading));

    if (firebaseAuth.currentUser != null) {
      firebaseAuth.currentUser!.reload().then((_) async {
        print("Yes");
        final user = firebaseAuth.currentUser;
        final failureOrProfile =
            await _repository.getUserProfile(uid: user!.uid);
        failureOrProfile.fold(
            (l) => emit(state.copyWith(
                  getUserProfileLoadingStatus: LoadingStatus.error,
                )), (r) {
          print("R is $r");
          emit(
            state.copyWith(
              userProfileModel: r,
              getUserProfileLoadingStatus: LoadingStatus.loaded,
              getCurrentUserLoadingStatus: LoadingStatus.loaded,
            ),
          );
        });
      });
    } else {
      emit(state.copyWith(
          getCurrentUserLoadingStatus: LoadingStatus.error,
          getUserProfileLoadingStatus: LoadingStatus.error));
    }
  }
}
