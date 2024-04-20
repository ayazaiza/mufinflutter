import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/utils/resource.dart';
import '../../../../domain/entities/student/student.dart';
import '../../../../domain/usescases/student/get_students_stream.dart';

part 'all_students_event.dart';

part 'all_students_state.dart';

part 'all_students_bloc.freezed.dart';

class AllStudentsBloc extends Bloc<AllStudentsEvent, AllStudentsState> {
  final GetStudentsStream _getStudentsStream;
  final String _uuid;
  StreamSubscription<Resource<List<Student>>>? _students;

  AllStudentsBloc(
      {required GetStudentsStream studentsStream,
      required String uuid})
      :
        _getStudentsStream = studentsStream,
        _uuid = uuid,
        super(AllStudentsState(uuid: uuid)) {
    on<DeleteStudentEvent>((event, emit) {});
    on<StartEvent>(_loadStudents);
    on<NewStudentList>((event, emit) {
      emit(state.copyWith(students: event.students/*.where((element) => !element.inBin).toList()*/,isLoading:false));
    });
  }

  void _loadStudents(AllStudentsEvent event, Emitter<AllStudentsState> emit) {
    _students?.cancel();
    _students = _getStudentsStream.call(_uuid).listen((event) {
      add(AllStudentsEvent.newList(students: event.data ?? state.students));
    });
  }

  @override
  Future<void> close() {
    _students?.cancel();
    return super.close();
  }
}
