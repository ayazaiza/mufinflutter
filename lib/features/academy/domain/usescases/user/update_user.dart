import '../../../data/models/user/mufin_user_model.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';
import 'package:academy/features/academy/domain/repository/mufin_user_repo.dart';

class UpdateUser implements UseCase<Resource<String>, MufinUserModel> {
  final MufinUserRepo _mufinUserRepo;

  UpdateUser({required MufinUserRepo mufinUserRepo})
      : _mufinUserRepo = mufinUserRepo;

  @override
  Future<Resource<String>> call(MufinUserModel params) async {
    var resp = await _mufinUserRepo.updateUser(params);
    try {
      await _mufinUserRepo.addActivity(
          params.userId, "Successfully updated your profile details");
    } catch (_) {}
    return resp;
  }
}
