import 'dart:ui';

import 'package:academy/core/extensions/extension_mapper.dart';

import '../../../../core/error/app_exceptions.dart';
import '../../../../core/utils/resource.dart';
import '../datasources/firebase_user_auth_ds.dart';
import '../../domain/entities/user_auth_model.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/repository/firebase_user_auth_repo.dart';



class FirebaseUserAuthImpl implements FirebaseUserAuth {
  final FirebaseUserAuthDataSource _firebaseUserAuthDataSource;

  FirebaseUserAuthImpl(
      {required FirebaseUserAuthDataSource firebaseUserAuthDataSource})
      : _firebaseUserAuthDataSource = firebaseUserAuthDataSource;

  @override
  Stream<UserModel?> userSession() =>
      _firebaseUserAuthDataSource.userSession().map((user) {
        return user?.toUserModel;
      });

  @override
  Future<void> checkUserExist() async {
    return await _firebaseUserAuthDataSource.checkUserExist();
  }

  @override
  Future<void> signOut() async {
    return await _firebaseUserAuthDataSource.signOut();
  }

  @override
  Future<void> deleteUser() async {
    return await _firebaseUserAuthDataSource.deleteUser();
  }

  @override
  Future<Resource<String>> forgotPassword({required String email}) async {
    try {
      var resp = await _firebaseUserAuthDataSource.forgotPassword(email: email);
      return DataSuccess(resp);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<UserModel>> signInWithEmailPassword(
      String email, String password) async {
    try {
      var userCredential = await _firebaseUserAuthDataSource
          .signInWithEmailPassword(email = email, password = password);
      return DataSuccess(userCredential.user!.toUserModel);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<UserModel>> createUserWithEmailPassword(
      {required UserAuthModel userAuthModel}) async {
    try {
      var userCredential = await _firebaseUserAuthDataSource
          .createUserWithEmailPassword(userAuthModel: userAuthModel);
      return DataSuccess(userCredential.user!.toUserModel);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<UserModel>> signInWithGoogle(
      {required VoidCallback loading}) async {
    try {
      var userCredential =
      await _firebaseUserAuthDataSource.signInWithGoogle(loading: loading);
      return DataSuccess(userCredential.user!.toUserModel);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}

/*  Future<UserModel?> _insertUser(
      {required UserModel? userModelEntity, String? name}) async {
    if (userModelEntity == null) {
      return userModelEntity;
    }
    final UserModel userModelEntityData = UserModel(
        name: userModelEntity.name ?? name,
        uid: userModelEntity.uid,
        phone: userModelEntity.phone,
        photoUrl: userModelEntity.photoUrl,
        email: userModelEntity.email);
    try {
      var ref = _firebaseFireStore.collection(collectionsRef);
      var user = await ref.doc(userModelEntityData.uid).get();
      if (!user.exists) {
        await ref.doc(userModelEntityData.uid).set(userModelEntityData.toJson);
      }
    } catch (_) {}
    return userModelEntityData;
  }*/
