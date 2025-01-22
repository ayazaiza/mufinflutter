import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/repository/song_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetSongsStudentId implements UseCase<Resource<List<Song>>, String> {
  final SongRepo _songRepo;

  GetSongsStudentId({required SongRepo songRepo}) : _songRepo = songRepo;

  @override
  Future<Resource<List<Song>>> call(String studentId) async {
    return await _songRepo.getSongsByStudentId(studentId);
  }
}
