import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';

import 'package:academy/features/academy/data/models/event_enrolls/event_enroll_model.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../../domain/repository/event_enrolls_repo.dart';
import '../datasources/event_enrolls_data_source.dart';

class EventEnrollsRepoImpl implements EventEnrollsRepo {
  final EventEnrollsDataSource _eventEnrollsDataSource;

  EventEnrollsRepoImpl({required EventEnrollsDataSource eventEnrollsDataSource})
      : _eventEnrollsDataSource = eventEnrollsDataSource;

  @override
  Future<Resource<String>> addEventEnroll(
      EventEnrollModel eventEnrollModel) async {
    try {
      await _eventEnrollsDataSource.addEventEnroll(eventEnrollModel);
      return const DataSuccess(AppStrings.successfullyAdded);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<EventEnroll>> getEventEnroll(String id) async {
    try {
      var resp = await _eventEnrollsDataSource.getEventEnroll(id);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(EventEnrollModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<EventEnroll>>> getEventEnrollHasDup(
      String eventTypeId, String studentId, String parentId) async {
    return await _getEvenEnrolls(() async => await _eventEnrollsDataSource
        .getEventEnrollHasDup(eventTypeId, studentId, parentId));
  }

  @override
  Future<Resource<List<EventEnroll>>> getEventEnrolls(String userId) async {
    return await _getEvenEnrolls(
        () async => await _eventEnrollsDataSource.getEventEnrolls(userId));
  }

  @override
  Future<Resource<List<EventEnroll>>> getEventEnrollsByStudId(
      String studentId) async{
    return await _getEvenEnrolls(
            () async => await _eventEnrollsDataSource.getEventEnrollsByStudId(studentId));
  }

  Future<Resource<List<EventEnroll>>> _getEvenEnrolls(
      Future<QuerySnapshot<Object?>> Function() func) async {
    try {
      var resp = await func();
      return DataSuccess(resp.toMapList
          .map((event) => EventEnrollModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}
