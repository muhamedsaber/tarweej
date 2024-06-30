import 'dart:convert';

import 'package:tarweej/config/cache/cache_constants.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/features/Auth/profile/user_profile/data/models/user_model.dart';

class UserCahceHelper {
  UserCahceHelper._();

  /// retrieve [UserModel] from cache
  static getUserInfoModel() async {
    String data = await CacheHelper.getString(key: CacheConstants.userCache);
    return UserModel.fromJson(jsonDecode(data));
  }

  /// save user [UserModel] in cache
  static saveUserInforModel(UserModel userModel) async {
    await CacheHelper.setData(
      key: CacheConstants.userCache,
      value: jsonEncode(userModel.toJson()),
    );
  }
}
