import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/user/recent_activities.dart';

import '../../../../../core/usecase/usecaseStream.dart';
import '../../repository/mufin_user_repo.dart';

class GetActivitiesStream
    implements UseCaseStream<Resource<List<RecentActivities>>, String> {
  final MufinUserRepo _mufinUserRepo;

  GetActivitiesStream({required MufinUserRepo mufinUserRepo})
      : _mufinUserRepo = mufinUserRepo;

  @override
  Stream<Resource<List<RecentActivities>>> call(String params) {
    return _mufinUserRepo.getActivitiesStream(params);
  }
}
