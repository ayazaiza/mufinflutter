import '../../../data/models/user/mufin_user_model.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';
import 'package:academy/features/academy/domain/repository/mufin_user_repo.dart';

class InsertUser implements UseCase<Resource<String>, MufinUserModel> {
  final MufinUserRepo _mufinUserRepo;

  InsertUser({required MufinUserRepo mufinUserRepo})
      : _mufinUserRepo = mufinUserRepo;

  @override
  Future<Resource<String>> call(MufinUserModel params) async {
    var resp = await _mufinUserRepo.insertUser(params);
    [
      "Accepted our terms and conditions",
      "Successfully registered a new account",
      "Successfully completed your profile"
    ].toList().forEach((activity) async {
      try {
        await _mufinUserRepo.addActivity(params.userId, activity);
      } catch (_) {}
    });
    return resp;
  }
}
