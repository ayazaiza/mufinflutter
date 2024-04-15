import 'package:academy/features/academy/data/models/student/student_model.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';
import '../user/add_activity.dart';

class DeleteStudent implements UseCase<Resource<String>, Student> {
  final StudentRepo _studentRepo;
  final AddActivity _addActivity;

  DeleteStudent(
      {required StudentRepo studentRepo, required AddActivity addActivity})
      : _studentRepo = studentRepo,
        _addActivity = addActivity;

  @override
  Future<Resource<String>> call(Student params) async {
    final StudentModel studentModel = StudentModel(
        name: params.name,
        firstname: params.firstname,
        lastname: params.lastname,
        age: params.age,
        dateOfBirth: params.dateOfBirth,
        gender: params.gender,
        userId: params.userId,
        userEmail: params.userEmail,
        studentDocId: params.studentDocId,
        parentName: params.parentName,
        relationToStudent: params.relationToStudent,
        ageInWords: params.ageInWords,
        timestamp: params.timestamp,
        lastUpdated: params.lastUpdated,
        inBin: params.inBin);
    var resp = await _studentRepo.deleteStudent(studentModel);
    await _addActivity(
      AddActivityParams(
          userId: studentModel.userId,
          activity: "Deleted ${studentModel.name} from students list"),
    );
    return resp;
  }
}
