import 'package:academy/features/academy/domain/entities/utils/notification.dart';
import 'package:academy/features/academy/domain/repository/notification_repo.dart';

import '../../../../../core/usecase/use_case_stream.dart';
import '../../../../../core/utils/resource.dart';

class GetNotificationStream
    implements UseCaseStream<Resource<AppNotification>, String> {
  final NotificationRepo _notificationRepo;

  GetNotificationStream({required NotificationRepo notificationRepo})
      : _notificationRepo = notificationRepo;

  @override
  Stream<Resource<AppNotification>> call(String notificationId) {
    return _notificationRepo.getNotification(notificationId);
  }
}
