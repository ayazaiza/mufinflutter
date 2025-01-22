import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/repository/song_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetSong implements UseCase<Resource<Song>, String> {
  final SongRepo _songRepo;

  GetSong({required SongRepo songRepo}) : _songRepo = songRepo;

  @override
  Future<Resource<Song>> call(String songId) async{
    return await _songRepo.getSong(songId);
  }
}
