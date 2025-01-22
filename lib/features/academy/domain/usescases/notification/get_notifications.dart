import '../../../../../core/usecase/use_case_stream.dart';
import '../../../../../core/utils/resource.dart';
import '../../entities/utils/notification.dart';
import '../../repository/notification_repo.dart';

class GetNotificationsStream
    implements UseCaseStream<Resource<List<AppNotification>>, String> {
  final NotificationRepo _notificationRepo;

  GetNotificationsStream({required NotificationRepo notificationRepo})
      : _notificationRepo = notificationRepo;

  @override
  Stream<Resource<List<AppNotification>>> call(String userId) {
    return _notificationRepo.getNotifications(userId);
  }
}
