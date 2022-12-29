import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes.gr.dart';
import 'network_info.dart';

final _appInjector = _AppInjector();
final networkInfo = _appInjector.networkInfo;
final firebaseAuth = _appInjector.firebaseAuth;
final router = _appInjector.router;
final firebaseStorage = _appInjector.firebaseStorage;
final firestore = _appInjector.firestore;

final appRouter = _appInjector.router;

final sharedPreferences = _appInjector.sharedPreferences;

class _AppInjector {
  _AppInjector._internal();
  static final _singleton = _AppInjector._internal();
  factory _AppInjector() => _singleton;

  InternetConnectionChecker internetConnectionChecker =
      InternetConnectionChecker();
  NetworkInfo get networkInfo =>
      NetworkInfoImpl(connectionChecker: internetConnectionChecker);

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  AppRouter get router => AppRouter();

  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
