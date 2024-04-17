import 'package:academy/features/academy/data/models/utils/notification_model.dart';
import 'package:academy/features/academy/domain/entities/utils/notification.dart';
import 'package:academy/features/academy/domain/repository/notification_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class UpdateNotification implements UseCase<Resource<String>, AppNotification> {
  final NotificationRepo _notificationRepo;

  UpdateNotification({required NotificationRepo notificationRepo})
      : _notificationRepo = notificationRepo;

  @override
  Future<Resource<String>> call(AppNotification params) async {
    return await _notificationRepo.updateNotification(AppNotificationModel(
        notificationId: params.notificationId,
        message: params.message,
        toUserId: params.toUserId,
        toEmail: params.toEmail,
        toName: params.toName,
        seen: params.seen,
        timestamp: params.timestamp,
        lastUpdated: params.lastUpdated,
        seenAt: params.seenAt));
  }
}
