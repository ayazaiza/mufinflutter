import 'package:academy/core/constants/constants.dart';
import 'package:academy/core/error/app_exceptions.dart';
import 'package:academy/core/constants//app_strings.dart';
import 'package:academy/features/academy/data/models/user/mufin_user_model.dart';
import 'package:academy/features/academy/data/models/user/recent_activities_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract interface class MufinUserDS {
  Future<DocumentSnapshot<Object?>> getMufinUser(String userId);

  Stream<DocumentSnapshot<Object?>> getMufinUserStream(String userId);

  Future<void> insertUser(MufinUserModel user);

  Future<void> updateUser(MufinUserModel user);

  Future<void> addActivity(String userId, String activity);

  Future<QuerySnapshot<Object?>> getActivities(String userId, {bool limit});

  Stream<QuerySnapshot<Object?>> getActivitiesStream(String userId);
}

class MufinUserDSImpl implements MufinUserDS {
  final CollectionReference _userRef;

  MufinUserDSImpl({required CollectionReference userRef}) : _userRef = userRef;

  @override
  Future<DocumentSnapshot<Object?>> getMufinUser(String userId) async {
    try {
      var doc = await _userRef.doc(userId).get();
      if (!doc.exists) {
        throw const ServerException(message: AppStrings.userNotFound);
      }
      return doc;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Stream<DocumentSnapshot<Object?>> getMufinUserStream(String userId) {
    return _userRef.doc(userId).snapshots();
  }

  @override
  Future<void> insertUser(MufinUserModel user) async {
    try {
      await _userRef.doc(user.userId).set(user.toJson());
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> updateUser(MufinUserModel user) async {
    try {
      await _userRef.doc(user.userId).update(user.toJson());
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> addActivity(String userId, String activity) async {
    try {
      var ref = _userRef.doc(userId).collection(AppConstants.recentActivities);
      var recentActivityId = ref.doc().id;
      await ref.doc(recentActivityId).set(RecentActivitiesModel(
              userId: userId,
              activity: activity,
              recentActivityId: recentActivityId,
              timestamp: Timestamp.now())
          .toJson());
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<QuerySnapshot<Object?>> getActivities(String userId,
      {bool limit = false}) async {
    return await _userRef
        .doc(userId)
        .collection(AppConstants.recentActivities)
        .get();
  }

  @override
  Stream<QuerySnapshot<Object?>> getActivitiesStream(String userId) {
    return _userRef
        .doc(userId)
        .collection(AppConstants.recentActivities)
        .snapshots();
  }
}
