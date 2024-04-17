import 'package:academy/core/error/app_exceptions.dart';
import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/datasources/notification_data_source.dart';

import 'package:academy/features/academy/data/models/utils/notification_model.dart';

import 'package:academy/features/academy/domain/entities/utils/notification.dart';

import '../../../../core/constants/app_strings.dart';
import '../../domain/repository/notification_repo.dart';

class NotificationRepoImpl implements NotificationRepo {
  final NotificationDataSource _notificationDataSource;

  NotificationRepoImpl({required NotificationDataSource notificationDataSource})
      : _notificationDataSource = notificationDataSource;

  @override
  Stream<Resource<AppNotification>> getNotification(String notificationId) {
    try {
      return _notificationDataSource.getNotification(notificationId).map(
          (event) => DataSuccess(AppNotificationModel.fromMap(event.snaps)));
    } on ServerException catch (e) {
      return Stream.value(DataError(e.message));
    }
  }

  @override
  Stream<Resource<List<AppNotification>>> getNotifications(String userId) {
    try {
      return _notificationDataSource.getNotifications(userId).map((event) =>
          DataSuccess(event.toMapList
              .map((e) => AppNotificationModel.fromMap(e))
              .toList()));
    } on ServerException catch (e) {
      return Stream.value(DataError(e.message));
    }
  }

  @override
  Future<Resource<String>> updateNotification(
      AppNotificationModel appNotificationModel) async {
    try {
      await _notificationDataSource.updateNotification(appNotificationModel);
      return const DataSuccess(AppStrings.successfullyUpdated);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}
