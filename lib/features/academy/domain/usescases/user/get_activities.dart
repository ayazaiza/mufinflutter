import 'package:academy/core/usecase/usecase.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';

import '../../repository/mufin_user_repo.dart';

class GetActivities
    implements UseCase<Resource<List<RecentActivities>>, String> {
  final MufinUserRepo _mufinUserRepo;

  GetActivities({required MufinUserRepo mufinUserRepo})
      : _mufinUserRepo = mufinUserRepo;

  @override
  Future<Resource<List<RecentActivities>>> call(String params) async {
    return await _mufinUserRepo.getActivities(params);
  }
}
