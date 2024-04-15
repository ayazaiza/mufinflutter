
import 'package:academy/features/academy/domain/entities/event_enrolls/mufin_events.dart';

import '../../../../core/utils/resource.dart';

abstract interface class MufinEventsRepo {
  Future<Resource<MufinEvents>> getMufinEvent(String id);

  Future<Resource<List<MufinEvents>>> getMufinEvents();

  Stream<Resource<List<MufinEvents>>> getMufinEventsStream();
}

