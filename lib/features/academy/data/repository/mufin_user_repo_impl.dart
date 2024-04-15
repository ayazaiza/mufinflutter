import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/features/academy/data/models/user/recent_activities_model.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../../../../core/utils/resource.dart';
import '../../domain/entities/user/mufin_user.dart';
import '../../domain/repository/mufin_user_repo.dart';
import '../datasources/mufin_user_ds.dart';
import '../models/user/mufin_user_model.dart';

class MufinUserRepoImpl implements MufinUserRepo {
  final MufinUserDS _mufinUserDS;

  MufinUserRepoImpl({required MufinUserDS mufinUserDS})
      : _mufinUserDS = mufinUserDS;

  @override
  Future<Resource<MufinUser>> getMufinUser(String userId) async {
    try {
      var resp = await _mufinUserDS.getMufinUser(userId);
      return DataSuccess(MufinUserModel.toHashMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Stream<Resource<MufinUser>> getMufinUserStream(String userId) {
    try {
      return _mufinUserDS.getMufinUserStream(userId).map((event) {
        if (!event.exists) {
          throw const ServerException(message: AppStrings.userNotFound);
        }
        // event.
        return DataSuccess(MufinUserModel.toHashMap(event.snaps));
      });
    } on ServerException catch (e) {
      return Stream.value(DataError(e.message));
    }
  }

  @override
  Future<Resource<String>> insertUser(MufinUserModel user) async {
    try {
      await _mufinUserDS.insertUser(user);
      return const DataSuccess(AppStrings.success);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<String>> updateUser(MufinUserModel user) async {
    try {
      await _mufinUserDS.updateUser(user);
      return const DataSuccess(AppStrings.success);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<String>> addActivity(String userId, String activity) async {
    try {
      await _mufinUserDS.addActivity(userId, activity);
      return const DataSuccess(AppStrings.success);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<RecentActivities>>> getActivities(String userId,
      {bool limit = false}) async {
    try {
      var resp = await _mufinUserDS.getActivities(userId, limit: limit);
      return DataSuccess(resp.toMapList
          .map((e) => RecentActivitiesModel.fromJson(e))
          .toList());
    } catch (e) {
      return DataError(e.toString());
    }
  }

  @override
  Stream<Resource<List<RecentActivities>>> getActivitiesStream(String userId) {
    return _mufinUserDS.getActivitiesStream(userId).map((event) => DataSuccess(
        event.toMapList
            .map((e) => RecentActivitiesModel.fromJson(e))
            .toList()));
  }
}
