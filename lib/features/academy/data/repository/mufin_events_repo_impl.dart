import 'package:academy/core/extensions/extension_mapper.dart';

import '../../../../core/utils/resource.dart';
import '../../domain/entities/event_enrolls/mufin_events.dart';
import '../../domain/repository/mufin_events_repo.dart';
import '../datasources/common_firestore_ds.dart';
import '../models/event_enrolls/mufin_events_model.dart';

class MufinEventsRepoImpl implements MufinEventsRepo {
  final CommonFireStoreDataSources _commonFireStoreDataSources;

  MufinEventsRepoImpl({required CommonFireStoreDataSources commonFireStoreDataSources})
      : _commonFireStoreDataSources = commonFireStoreDataSources;

  @override
  Future<Resource<MufinEvents>> getMufinEvent(String id) async {
    try {
      var resp = await _commonFireStoreDataSources.getItem(id);
      return DataSuccess(resp.toMufinEvents);
    } on Exception catch (_, e) {
      return DataError(e.toString());
    }
  }

  @override
  Future<Resource<List<MufinEvents>>> getMufinEvents() async {
    try {
      var resp = await _commonFireStoreDataSources.getItems();
      return DataSuccess(
          resp.toMapList.map((e) => MufinEventsModel.fromMap(e)).toList());
    }  catch (e) {
      return DataError(e.toString());
    }
  }

  @override
  Stream<Resource<List<MufinEvents>>> getMufinEventsStream() {
    var resp = _commonFireStoreDataSources.getItemsStream();
    return resp.map((event) => DataSuccess(
        event.toMapList.map((e) => MufinEventsModel.fromMap(e)).toList()));
  }
}
