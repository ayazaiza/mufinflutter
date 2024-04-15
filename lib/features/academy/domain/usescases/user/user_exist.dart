import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/user/mufin_user.dart';
import 'package:academy/features/academy/domain/repository/mufin_user_repo.dart';

class UserExists implements UseCase<Resource<MufinUser>, String> {
  final MufinUserRepo _mufinUserRepo;

  UserExists({required MufinUserRepo mufinUserRepo})
      : _mufinUserRepo = mufinUserRepo;

  @override
  Future<Resource<MufinUser>> call(String params) async {
    return await _mufinUserRepo.getMufinUser(params);
  }
}
