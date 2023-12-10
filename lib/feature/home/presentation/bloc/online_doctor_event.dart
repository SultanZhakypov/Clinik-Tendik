part of 'online_doctor_bloc.dart';

abstract class OnlineDoctorEvent extends Equatable {
  const OnlineDoctorEvent();

  @override
  List<Object> get props => [];
}

class GetPatientInfoEvent extends OnlineDoctorEvent {
  const GetPatientInfoEvent({required this.inn, required this.number});

  final String inn;
  final String number;
}

class GetDoctorsList extends OnlineDoctorEvent {
  const GetDoctorsList();
}

class SearchDoctorsList extends OnlineDoctorEvent {
  const SearchDoctorsList(this.fio);

  final String fio;
}

class GetDoctorsTime extends OnlineDoctorEvent {
  const GetDoctorsTime({required this.date, this.index,this.nextPage = false});

  final DateTime date;
  final int? index;
  final bool nextPage;
}

class GetPatientTalon extends OnlineDoctorEvent {
  const GetPatientTalon({this.registrationDate});

  final DateTime? registrationDate;
}

class GetListTalones extends OnlineDoctorEvent {
  const GetListTalones();
}

class GetTalones extends OnlineDoctorEvent {
  const GetTalones({this.id});

  final String? id;
}
class DeleteTalon extends OnlineDoctorEvent {
  const DeleteTalon({this.id});

  final String? id;
}
class GetTalonPdf extends OnlineDoctorEvent {
  const GetTalonPdf({this.id});

  final String? id;
}
