import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/models/utils/song_model.dart';
import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/repository/song_repo.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../datasources/song_data_source.dart';

class SongRepoImpl implements SongRepo {
  final SongDatasource _songDatasource;

  SongRepoImpl({required SongDatasource songDatasource})
      : _songDatasource = songDatasource;

  @override
  Future<Resource<Song>> getSong(String songId) async {
    try {
      var resp = await _songDatasource.getSong(songId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(SongModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<Song>>> getSongsByStudentId(String studentId) async {
    try {
      var resp = await _songDatasource.getSongsByStudentId(studentId);
      return DataSuccess(
          resp.toMapList.map((event) => SongModel.fromMap(event)).toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<Song>>> getSongsByUserId(String uuid) async {
    try {
      var resp = await _songDatasource.getSongsByUserId(uuid);
      return DataSuccess(
          resp.toMapList.map((event) => SongModel.fromMap(event)).toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

}
