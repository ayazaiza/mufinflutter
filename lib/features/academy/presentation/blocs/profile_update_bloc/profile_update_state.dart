part of 'profile_update_bloc.dart';

@freezed
class ProfileUpdateState with _$ProfileUpdateState {
  const factory ProfileUpdateState(
      {String? uuid,
      @Default("") String email,
      @Default("") String firstName,
      String? firstNameError,
      @Default("") String lastName,
      String? lastNameError,
      @Default("") String phone,
      String? phoneError,
      @Default(YesRNo.yes) YesRNo emailAlerts,
      @Default(YesRNo.yes) YesRNo phoneAlerts,
      @Default([]) List<String> preferredDays,
      String? preferredDaysError,
      @Default([]) List<String> preferredTimes,
      String? preferredTimesError,
      @Default("") String address,
      String? addressError,
      @Default(["Canada", "India", "UK", "USA"]) List<String> countriesList,
      String? country,
      String? countryError,
      @Default("") String stateText,
      String? stateError,
      @Default("") String city,
      String? cityError,
      @Default("") String where,
      @Default(false) bool isLoading,
      @Default(true) bool screenLoading,
      MufinUser? mufinUser,
      String? successMsg,
      String? route,
      String? errorMsg}) = _Initial;
}
