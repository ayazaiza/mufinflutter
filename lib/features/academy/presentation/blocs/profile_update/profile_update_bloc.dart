
import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/core/utils/router_const.dart';
import 'package:academy/features/academy/domain/entities/user/mufin_user.dart';
import 'package:academy/features/academy/domain/entities/utils/yes_no.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/usescases/user/insert_user.dart';
import '../../../domain/usescases/user/update_user.dart';
import '../../../domain/usescases/user/user_exist.dart';
import '../../../../../core/utils/form_validation.dart';
import '../../../data/models/user/mufin_user_model.dart';

part 'profile_update_event.dart';

part 'profile_update_state.dart';

part 'profile_update_bloc.freezed.dart';

class ProfileUpdateBloc extends Bloc<ProfileUpdateEvent, ProfileUpdateState> {
  final UserExists _userExists;
  final InsertUser _insertUser;
  final UpdateUser _updateUser;

  ProfileUpdateBloc(
      {required String uuid,
      required UserExists userExists,
      required UpdateUser updateUser,
      required InsertUser insertUser,
      required String email})
      : _userExists = userExists,
        _insertUser = insertUser,
        _updateUser = updateUser,
        super(ProfileUpdateState(uuid: uuid, email: email)) {
    on<InitScreen>(_init);
    on<Submit>(_save);
    on<FirstName>((event, emit) => emit(state.copyWith(
        firstName: event.name,
        firstNameError:
            FormValidationRegex.emptyCheck(event.name, AppStrings.firstname))));
    on<LastName>((event, emit) => emit(state.copyWith(
        lastName: event.name,
        lastNameError:
            FormValidationRegex.emptyCheck(event.name, AppStrings.lastname))));
    on<Phone>((event, emit) => emit(state.copyWith(
        phone: event.phone,
        phoneError: FormValidationRegex.phoneValidate(event.phone))));
    on<Address>((event, emit) => emit(state.copyWith(
        address: event.address,
        addressError: FormValidationRegex.emptyCheck(
            event.address, AppStrings.address))));
    on<StateChange>((event, emit) => emit(state.copyWith(
        stateText: event.statevalue,
        stateError: FormValidationRegex.emptyCheck(
            event.statevalue, AppStrings.state))));
    on<City>((event, emit) => emit(state.copyWith(
        city: event.city,
        cityError:
            FormValidationRegex.emptyCheck(event.city, AppStrings.city))));
    on<Where>((event, emit) => emit(state.copyWith(where: event.where)));
    on<EmailAlert>((event, emit) {
      emit(state.copyWith(emailAlerts: event.alert));
    });
    on<Reset>((event, emit) {
      emit(state.copyWith(errorMsg: null, successMsg: null, route: null));
    });
    on<PhoneAlert>((event, emit) {
      emit(state.copyWith(phoneAlerts: event.alert));
    });
    on<Country>((event, emit) {
      emit(state.copyWith(
          country: event.country,
          countryError: FormValidationRegex.emptyCheck(
              event.country, AppStrings.country)));
    });
    on<PreferredDays>((event, emit) {
      emit(state.copyWith(
          preferredDays: event.items,
          preferredDaysError:
              event.items.isEmpty ? AppStrings.selectPrefDaysError : null));
    });
    on<PreferredTimes>((event, emit) {
      emit(state.copyWith(
          preferredTimes: event.items,
          preferredTimesError:
              event.items.isEmpty ? AppStrings.selectPrefTimesError : null));
    });
  }

  void _init(InitScreen event, Emitter emit) async {
    var resp = await _userExists.call(event.uuid);
    var user = resp.data;
    if (user != null) {
      emit(state.copyWith(
          firstName: user.firstname,
          lastName: user.lastname,
          email: user.email,
          mufinUser: user,
          phone: user.phone,
          address: user.address,
          emailAlerts: user.receiveEmails ? YesRNo.yes : YesRNo.no,
          phoneAlerts: user.receiveSMS ? YesRNo.yes : YesRNo.no,
          country: user.country,
          city: user.city,
          stateText: user.state,
          preferredDays: user.preferredDays,
          preferredTimes: user.preferredTimes,
          where: user.howDidYouFindUs));
    }
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(screenLoading: false));
  }

  void _save(Submit event, Emitter<ProfileUpdateState> emit) async {
    var firstNameError =
        FormValidationRegex.emptyCheck(state.firstName, AppStrings.firstname);
    var lastNameError =
        FormValidationRegex.emptyCheck(state.lastName, AppStrings.lastname);
    var phoneError = FormValidationRegex.phoneValidate(state.phone);
    var preferredDaysListError =
        state.preferredDays.isEmpty ? AppStrings.selectPrefDaysError : null;
    var preferredTimesListError =
        state.preferredTimes.isEmpty ? AppStrings.selectPrefTimesError : null;
    var addressError =
        FormValidationRegex.emptyCheck(state.address, AppStrings.address);
    var countryError =
        FormValidationRegex.emptyCheck(state.country, AppStrings.country);
    var stateError =
        FormValidationRegex.emptyCheck(state.stateText, AppStrings.state);
    var cityError = FormValidationRegex.emptyCheck(state.city, AppStrings.city);
    var hasError = [
      firstNameError,
      lastNameError,
      phoneError,
      preferredDaysListError,
      preferredTimesListError,
      addressError,
      countryError,
      stateError,
      cityError
    ].any((element) => element != null);
    emit(state.copyWith(
        firstNameError: firstNameError,
        lastNameError: lastNameError,
        phoneError: phoneError,
        preferredDaysError: preferredDaysListError,
        preferredTimesError: preferredTimesListError,
        addressError: addressError,
        countryError: countryError,
        stateError: stateError,
        cityError: cityError));
    if (hasError) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    MufinUserModel user = MufinUserModel(
        name: "${state.firstName.trim()} ${state.lastName.trim()}",
        userId: state.uuid!,
        firstname: state.firstName.trim(),
        lastname: state.lastName.trim(),
        description: state.mufinUser?.description ?? "",
        documentId: state.uuid ?? state.mufinUser?.documentId ?? state.uuid!,
        phone: state.phone.trim(),
        email: state.email.trim(),
        alternateEmail: state.mufinUser?.alternateEmail ?? "",
        studentRelationShip: state.mufinUser?.studentRelationShip ?? "",
        emailType: state.mufinUser?.emailType ?? "",
        phoneType: state.mufinUser?.phoneType ?? "",
        address: state.address.trim(),
        country: state.country!.trim(),
        city: state.city.trim(),
        state: state.stateText.trim(),
        extra: state.mufinUser?.extra ?? "",
        howDidYouFindUs: state.where.trim(),
        timestamp: state.mufinUser?.timestamp ?? Timestamp.now(),
        lastUpdated: Timestamp.now(),
        preferredDays: state.preferredDays,
        preferredTimes: state.preferredTimes,
        receiveEmails: state.emailAlerts == YesRNo.yes,
        receiveSMS: state.phoneAlerts == YesRNo.yes,
        admin: state.mufinUser?.admin ?? false,
        inspector: state.mufinUser?.inspector ?? false);

    if (state.mufinUser == null) {
      var resp = await _insertUser(user);
      if (resp.data != null) {
        emit(state.copyWith(
            isLoading: false,
            successMsg: resp.data!,
            errorMsg: null,
            route: RoutePaths.home.path));
      }
      emit(state.copyWith(isLoading: false, errorMsg: resp.error));
      return;
    }
    var resp = await _updateUser(user);
    if (resp.data != null) {
      emit(state.copyWith(
          isLoading: false, successMsg: resp.data!, errorMsg: null));
    }
    emit(state.copyWith(isLoading: false, errorMsg: resp.error));
    // respFun(
    //     () async => state.mufinUser == null
    //         ? await _insertUser(user)
    //         : await _updateUser(user),
    //     emit);
    // if (state.mufinUser == null) {
    //   emit(state.copyWith(route: PageRouteConstants.homePageRoute.path));
    // }
  }

  void respFun(Future<Resource<String>> Function() fn,
      Emitter<ProfileUpdateState> emit) async {
    var resp = await fn();
    if (resp.data != null) {
      emit(state.copyWith(
          isLoading: false, successMsg: resp.data!, errorMsg: null));
    } else {
      emit(state.copyWith(isLoading: false, errorMsg: resp.error));
    }
  }


}
