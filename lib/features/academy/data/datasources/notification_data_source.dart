import 'package:academy/features/academy/data/models/utils/notification_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class NotificationDataSource {
  Stream<QuerySnapshot<Object?>> getNotifications(String userId);

  Stream<DocumentSnapshot<Object?>> getNotification(String notificationId);

  Future<void> updateNotification(AppNotificationModel appNotificationModel);
}

class NotificationDataSourceImpl extends NotificationDataSource {
  final CollectionReference _notificationRef;

  NotificationDataSourceImpl({required CollectionReference notificationRef})
      : _notificationRef = notificationRef;

  @override
  Future<void> updateNotification(
      AppNotificationModel appNotificationModel) async {
    return await _tryCatch(() async {
      await _notificationRef
          .doc(appNotificationModel.notificationId)
          .update(appNotificationModel.toMap());
    });
  }

  @override
  Stream<DocumentSnapshot<Object?>> getNotification(String notificationId) {
    try {
      return _notificationRef.doc(notificationId).snapshots();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Stream<QuerySnapshot<Object?>> getNotifications(String userId) {
    try {
      return _notificationRef
          .where("toUserId", whereIn: ["all", userId]).snapshots();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<void> _tryCatch(Future<void> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
