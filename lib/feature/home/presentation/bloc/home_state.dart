part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading({bool? isOverlay}) = _Loading;
  const factory HomeState.error(dynamic error) = _Error;
  const factory HomeState.successTalonList(List<TalonListResponse> data) =
      _SuccessTalonList;
  const factory HomeState.successTalon(TalonResponse data,bool afterCreate) = _SuccessTalon;
  const factory HomeState.successDoctorList(List<DoctorsListResponse> data) =
      _SuccessDoctorList;
  const factory HomeState.successDoctorsTime(
      {required DoctorsTimeResponse data,
      required bool nextPage}) = _SuccessDoctorsTime;
  const factory HomeState.successCode({required PatientInfoResponse patient}) =
      _SuccessCode;
  const factory HomeState.successDeleteTalon() = _SuccessDeleteTalon;
  const factory HomeState.successResultNumber(ResultNumberResponse resultNumber) = _SuccessResultNumber;
  const factory HomeState.successgetResultData(List<ResultDataResponse>? resultData) = _SuccessgetResultData;
  const factory HomeState.successPDF(String? pdf) = _SuccessPDF;
   
 
}
