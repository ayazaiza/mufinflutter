import 'package:academy/core/utils/resource.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/mufin_user_repo.dart';

class AddActivity implements UseCase<Resource<String>, AddActivityParams> {
  final MufinUserRepo _mufinUserRepo;

  AddActivity({required MufinUserRepo mufinUserRepo})
      : _mufinUserRepo = mufinUserRepo;

  @override
  Future<Resource<String>> call(AddActivityParams params) async {
    return await _mufinUserRepo.addActivity(params.userId, params.activity);
  }
}

class AddActivityParams {
  final String userId;
  final String activity;

  AddActivityParams({required this.userId, required this.activity});
}
