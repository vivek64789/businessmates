
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/cache_constants.dart';

abstract class LocalDataSource {
  LocalDataSource();

  Future<bool> cacheAuthToken(String token);

  Future<String> getAuthToken();

  Future<bool> deleteAuthToken();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Future<SharedPreferences> prefs;

  LocalDataSourceImpl({required this.prefs, });
  @override
  Future<bool> cacheAuthToken(String token) async {
    return (await prefs).setString(CacheConstantsKeys.AUTH_TOKEN, token);
  }

  @override
  Future<bool> deleteAuthToken() async {
    return (await prefs).remove(CacheConstantsKeys.AUTH_TOKEN);
  }

  @override
  Future<String> getAuthToken() async {
    return (await prefs).getString(CacheConstantsKeys.AUTH_TOKEN) ?? '';
  }
  
  
}
