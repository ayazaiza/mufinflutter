import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';

abstract interface class SongRepo {
  Future<Resource<List<Song>>> getSongsByUserId(String uuid);

  Future<Resource<List<Song>>> getSongsByStudentId(String studentId);

  Future<Resource<Song>> getSong(String songId);
}
