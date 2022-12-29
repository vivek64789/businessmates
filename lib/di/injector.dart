import '../core/utils/injectable_module.dart';
import '../data/datasources/local_datasource.dart';
import '../data/datasources/remote_datasource.dart';
import '../data/repositories/repository_impl.dart';
import '../domain/repositories/repository.dart';

final _injector = _Injector();
final repository = _injector.repository;

class _Injector {
  _Injector._internal();
  static final _singleton = _Injector._internal();
  factory _Injector() => _singleton;

  LocalDataSource get localDataSourceImpl =>
      LocalDataSourceImpl(prefs: sharedPreferences);

  RemoteDataSource get remoteDataSourceImpl => RemoteDataSourceImpl(
        firebaseAuth: firebaseAuth,
        firebaseStorage: firebaseStorage,
        firestore: firestore,
        localDataSource: localDataSourceImpl,
      );

  Repository get repository => RepositoryImpl(
        remoteDataSource: remoteDataSourceImpl,
        networkInfo: networkInfo,
      );
}
