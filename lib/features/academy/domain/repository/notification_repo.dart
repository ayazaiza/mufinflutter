import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/utils/notification.dart';

import '../../data/models/utils/notification_model.dart';

abstract interface class NotificationRepo{
  Stream<Resource<List<AppNotification>>> getNotifications(String userId);

  Stream<Resource<AppNotification>> getNotification(String notificationId);

  Future<Resource<String>> updateNotification(AppNotificationModel appNotificationModel);
}


