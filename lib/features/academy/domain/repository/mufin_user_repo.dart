import 'package:academy/features/academy/domain/entities/user/mufin_user.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';

import '../../../../core/utils/resource.dart';
import '../../data/models/user/mufin_user_model.dart';


abstract interface class MufinUserRepo {
  Future<Resource<MufinUser>> getMufinUser(String userId);
  Stream<Resource<MufinUser>> getMufinUserStream(String userId);

  Future<Resource<String>> insertUser(MufinUserModel user);
  Future<Resource<String>> updateUser(MufinUserModel user);

  Future<Resource<String>> addActivity(String userId, String activity);

  Future<Resource<List<RecentActivities>>> getActivities(String userId, {bool limit});
  Stream<Resource<List<RecentActivities>>> getActivitiesStream(String userId);
}


