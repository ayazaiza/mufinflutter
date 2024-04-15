import 'dart:ui';

import 'package:academy/features/auth/domain/entities/user_auth_model.dart';
import 'package:academy/features/auth/domain/entities/user_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/resource.dart';

abstract interface class FirebaseUserAuth {
  Stream<UserModel?> userSession();

  Future<void> checkUserExist();

  Future<void> signOut();

  Future<Resource<UserModel>> signInWithEmailPassword(
      String email, String password);

  Future<Resource<String>> forgotPassword({required String email});

  // Future<UserModel?> signInWithGoogle({required VoidCallback loading});

  Future<Resource<UserModel>> signInWithGoogle({required VoidCallback loading});

  // Future<UserModel?> createUserWithEmailPassword(
  //     {required UserAuthModel userAuthModel});

  Future<Resource<UserModel>> createUserWithEmailPassword(
      {required UserAuthModel userAuthModel});

  Future<void> deleteUser();
}


