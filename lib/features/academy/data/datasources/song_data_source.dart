import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class SongDatasource {
  Future<QuerySnapshot<Object?>> getSongsByUserId(String uuid);

  Future<QuerySnapshot<Object?>> getSongsByStudentId(String studentId);

  Future<DocumentSnapshot<Object?>> getSong(String songId);
}

class SongDatasourceImpl implements SongDatasource {
  final CollectionReference _songRef;

  SongDatasourceImpl({required CollectionReference songRef})
      : _songRef = songRef;

  @override
  Future<DocumentSnapshot<Object?>> getSong(String songId) async {
    return await _tryCatch(() async => await _songRef.doc(songId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getSongsByStudentId(String studentId) async {
    return await _tryCatchList(() async => await _songRef
        .where("studentId", isEqualTo: studentId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getSongsByUserId(String uuid) async {
    return await _tryCatchList(() async => await _songRef
        .where("userId", isEqualTo: uuid)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  Future<DocumentSnapshot<Object?>> _tryCatch(
      Future<DocumentSnapshot<Object?>> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<QuerySnapshot<Object?>> _tryCatchList(
      Future<QuerySnapshot<Object?>> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
