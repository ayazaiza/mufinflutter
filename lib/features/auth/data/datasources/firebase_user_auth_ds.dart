import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:academy/features/auth/domain/entities/user_auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../../../../core/utils/custom_widgets.dart';

abstract interface class FirebaseUserAuthDataSource {


  Future<String?> signInWithPhone(String number);

  Stream<User?> userSession();

  Future<void> checkUserExist();

  Future<void> signOut();

  Future<UserCredential> signInWithEmailPassword(String email, String password);

  Future<String> forgotPassword({required String email});

  Future<UserCredential> signInWithGoogle({required VoidCallback loading});

  Future<UserCredential> createUserWithEmailPassword(
      {required UserAuthModel userAuthModel});

  Future<void> deleteUser();

  Future<UserCredential> signInWithCredentials(AuthCredential credential);
}

class FirebaseUserAuthDataSourceImpl implements FirebaseUserAuthDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseUserAuthDataSourceImpl(
      {required FirebaseAuth firebaseAuth, required GoogleSignIn googleSignIn})
      : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn;

  @override
  Stream<User?> userSession() => _firebaseAuth.userChanges();

  @override
  Future<void> checkUserExist() async {
    await _firebaseAuth.currentUser?.reload();
  }

  @override
  Future<void> signOut() async {
    CustomWidgets.ignoreTryCatch(() async {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
    });
  }

  @override
  Future<void> deleteUser() async {
    if (_firebaseAuth.currentUser == null ||
        _firebaseAuth.currentUser?.uid == null) {
      return;
    }
    CustomWidgets.ignoreTryCatch(() async {
      // var uid = _firebaseAuth.currentUser!.uid;
      // await _firebaseFireStore.collection(collectionsRef).doc(uid).delete();
      await _firebaseAuth.currentUser?.delete();
      await _googleSignIn.signOut();
    });
  }

  @override
  Future<String> forgotPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return AppStrings.resetPasswordLinkSent;
    } on SocketException catch (e, _) {
      throw ServerException(message: e.message);
    } on FirebaseAuthException catch (e, _) {
      throw ServerException(message: e.message.toString());
    }
  }

  @override
  Future<UserCredential> signInWithEmailPassword(
      String email, String password) async {
    try {
      var resp = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (resp.user == null) {
        throw const ServerException(message: AppStrings.userNotFound);
      }
      return resp;
    } on SocketException catch (e, _) {
      throw ServerException(message: e.message);
    } on FirebaseAuthException catch (e, _) {
      throw ServerException(message: e.message.toString());
    }
  }

  @override
  Future<UserCredential> signInWithGoogle(
      {required VoidCallback loading}) async {
    final GoogleSignInAccount? gUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    loading();
    return await signInWithCredentials(credential);
    /*try {
      var resp = await _firebaseAuth.signInWithCredential(credential);
      if (resp.user == null) {
        throw const ServerException(message: AppStrings.userNotFound);
      }
      return resp;
    } on SocketException catch (e, _) {
      throw ServerException(message: e.message);
    } on FirebaseAuthException catch (e, _) {
      throw ServerException(message: e.message.toString());
    }*/
  }

  @override
  Future<UserCredential> createUserWithEmailPassword(
      {required UserAuthModel userAuthModel}) async {
    try {
      var resp = await _firebaseAuth.createUserWithEmailAndPassword(
          email: userAuthModel.email, password: userAuthModel.password);
      if (resp.user == null) {
        throw const ServerException(message: AppStrings.userNotFound);
      }
      return resp;
    } on SocketException catch (e, _) {
      throw ServerException(message: e.message);
    } on FirebaseAuthException catch (e, _) {
      throw ServerException(message: e.message.toString());
    }
  }

  @override
  Future<String?> signInWithPhone(String number) async {
    var comp = Completer<String?>();
    await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: number,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {
          comp.completeError(ServerException(message: e.message.toString()));
        },
        codeSent: (verificationId, forceResendingToken) {
          comp.complete(verificationId);
        },
        codeAutoRetrievalTimeout: (verificationId) {
          log(verificationId);
        });
    return comp.future;
  }

  @override
  Future<UserCredential> signInWithCredentials(
      AuthCredential credential) async {
    try {
      var resp = await _firebaseAuth.signInWithCredential(credential);
      if (resp.user == null) {
        throw const ServerException(message: AppStrings.userNotFound);
      }
      return resp;
    } on SocketException catch (e, _) {
      throw ServerException(message: e.message);
    } on FirebaseAuthException catch (e, _) {
      throw ServerException(message: e.message.toString());
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
