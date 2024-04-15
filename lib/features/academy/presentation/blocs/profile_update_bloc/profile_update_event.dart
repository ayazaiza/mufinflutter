part of 'profile_update_bloc.dart';

@freezed
class ProfileUpdateEvent with _$ProfileUpdateEvent {
  const factory ProfileUpdateEvent.firstName({required String name}) = FirstName;
  const factory ProfileUpdateEvent.initScreen({required String uuid}) = InitScreen;
  const factory ProfileUpdateEvent.lastName({required String name}) = LastName;
  const factory ProfileUpdateEvent.phone({required String phone}) = Phone;
  const factory ProfileUpdateEvent.emailAlert({required YesRNo alert}) = EmailAlert;
  const factory ProfileUpdateEvent.phoneAlert({required YesRNo alert}) = PhoneAlert;
  const factory ProfileUpdateEvent.preferredDays({required List<String> items}) = PreferredDays;
  const factory ProfileUpdateEvent.preferredTimes({required List<String> items}) = PreferredTimes;
  const factory ProfileUpdateEvent.address({required String address}) = Address;
  const factory ProfileUpdateEvent.country({required String country}) = Country;
  const factory ProfileUpdateEvent.stateChange({required String statevalue}) = StateChange;
  const factory ProfileUpdateEvent.city({required String city}) = City;
  const factory ProfileUpdateEvent.where({required String where}) = Where;
  const factory ProfileUpdateEvent.submit() = Submit;
  const factory ProfileUpdateEvent.reset() = Reset;
//   const factory ProfileUpdateEvent.submit({
//     required String firstName,
//     required String lastName,
//     required String phone,
//     required String address,
//     required String state,
//     required String city,
//     required String where
// }) = Submit;
}
