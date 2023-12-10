import 'package:clinic_tendik/core/config/dio/dio_dettings.dart';
import 'package:clinic_tendik/core/helpers/pdf_helper.dart';
import 'package:clinic_tendik/feature/home/data/models/doctor_list_response/doctor_list_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctor_time_response/doctor_time_response.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info_model/patient_info_model.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_request/patient_registration_request.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class OnlineDoctorRepository {
  Future<PatientInfoData?> getPatientInfoRepo(String inn);
  Future<DoctorListData?> getSpecialistRepo(int organizationId);
  Future<List<DoctorTimeData>?> getSpecialistTimeRepo({
    required int orgAndUserId,
    required DateTime date,
  });
  Future<PatientRegistrationData?> registerPatientRepo(
      PatientRegistrationRequest model);
  Future<List<PatientRegistrationData>?> getListTalonesRepo();
  Future<PatientRegistrationData?> getTalonRepo(String? id);
  Future<void> deleteTalonRepo(String? id);
  Future<String?> getTalonPDF(String? id);
}

// @Singleton(as: OnlineDoctorRepository)
// class OnlineDoctorRepositoryImpl implements OnlineDoctorRepository {
//   OnlineDoctorRepositoryImpl(this._dioGenerator);
//   final DioSettings _dioGenerator;

//   final _ministryHealth = 'ministry/health';

//   @override
//   Future<PatientInfoData?> getPatientInfoRepo(String inn) async {
//     final response = await _dioGenerator.dio.get(
//       '$_ministryHealth/search/patients',
//       queryParameters: {'inn': inn},
//     );
//     return PatientInfoResponse.fromJson(response.data).data;
//   }

//   @override
//   Future<DoctorListData?> getSpecialistRepo(int organizationId) async {
//     final response = await _dioGenerator.dio.get(
//       '$_ministryHealth/doctors/list',
//       queryParameters: {'organisationId': organizationId},
//     );
//     return DoctorListResponse.fromJson(response.data).data;
//   }

//   @override
//   Future<List<DoctorTimeData>?> getSpecialistTimeRepo({
//     required int orgAndUserId,
//     required DateTime date,
//   }) async {
//     final formattedDate = DateFormat('yyyy-MM-ddTHH:mm:ss').format(date);
//     final response = await _dioGenerator.dio.get(
//       '$_ministryHealth/time/doctor',
//       queryParameters: {
//         'orgAndUserId': orgAndUserId,
//         'date': formattedDate,
//       },
//     );
//     return DoctorTimeResponse.fromJson(response.data).data;
//   }

//   @override
//   Future<PatientRegistrationData?> registerPatientRepo(
//       PatientRegistrationRequest model) async {
//     final formattedDate = DateFormat('yyyy-MM-ddTHH:mm:ss')
//         .format(model.registrationDate ?? DateTime.now());
//     final response = await _dioGenerator.dio.post(
//       '$_ministryHealth/registration/patient',
//       data: {
//         'patientId': model.patientId,
//         'number': model.number,
//         'organisationAndApplicationUserId':
//             model.organisationAndApplicationUserId,
//         'registrationDate': formattedDate,
//       },
//     );
//     return PatientRegistrationResponse.fromJson(response.data).data;
//   }

//   @override
//   Future<List<PatientRegistrationData>?> getListTalonesRepo() async {
//     final response = await _dioGenerator.dio.get(
//       '$_ministryHealth/getList',
//     );
//     return ListPatientRegistrationResponse.fromJson(response.data).data;
//   }

//   @override
//   Future<PatientRegistrationData?> getTalonRepo(String? id) async {
//     final response = await _dioGenerator.dio.get(
//       '$_ministryHealth/getTalon',
//       queryParameters: {'id': id},
//     );
//     return PatientRegistrationResponse.fromJson(response.data).data;
//   }

//   @override
//   Future<void> deleteTalonRepo(String? id) async {
//     await _dioGenerator.dio.get(
//       '$_ministryHealth/deleteTalon',
//       queryParameters: {'id': id},
//     );
//   }

//   @override
//   Future<String?> getTalonPDF(String? id) async {
//     return await Utils.downloadPdf(
//       currentUrl: '$_ministryHealth/pdf',
//       pdfPathName: '${id}talon.pdf',
//       queryParameters: {
//         'lang': 'ru',
//         'Id': id,
//       },
//     );
//   }
// }

//MOCK REPO
@Singleton(as: OnlineDoctorRepository)
class OnlineDoctorRepositoryImpl implements OnlineDoctorRepository {
  OnlineDoctorRepositoryImpl();

  @override
  Future<PatientInfoData?> getPatientInfoRepo(String inn) async {
    const data = PatientInfoData(
      id: 1,
      pin: '12313123',
      organisationId: 123,
      pripisan: false,
      organisationNameCode: 'organisationNameCode',
      organisationPhone: 'organisationPhone',
      parentOrganisationNameCode: 'parentOrganisationNameCode',
      parentOrganisationPhone: 'parentOrganisationPhone',
      oms: 'oms',
      errorMessage: 'errorMessage',
    );
    return data;
  }

  @override
  Future<DoctorListData?> getSpecialistRepo(int organizationId) async {
    const data = DoctorListData(
      currentPage: 1,
      pageSize: 1,
      totalItems: 1,
      totalPages: 1,
      result: [
        SpecialistResult(
            id: 1,
            applicationUserFio: 'applicationUserFio',
            applicationUserId: 'applicationUserId',
            organisationId: 1,
            organisationName: 'organisationName',
            etaj: 'etaj',
            numberCabinet: 'numberCabinet'),
      ],
    );

    return data;
  }

  @override
  Future<List<DoctorTimeData>?> getSpecialistTimeRepo({
    required int orgAndUserId,
    required DateTime date,
  }) async {
    final data = [
      DoctorTimeData(
        available: true,
        dateTime: DateTime.now(),
      ),
    ];

    return data;
  }

  @override
  Future<PatientRegistrationData?> registerPatientRepo(
      PatientRegistrationRequest model) async {
    const data = PatientRegistrationData(
        id: "0458df3a-c64e-4cb7-9ad2-04eaf0d7e3c3",
        ozParentName: "Нарынский областной центр семейной медицины",
        ozAdress: "Нарынская, Нарын",
        ozName: "ГСВ №1",
        doctorName: "Тынымсеитова Асбүбү  ",
        doctorSpecialnost: "Семейная медицина (общая врачебная практика)",
        etajCabinet: "1 / 20",
        dataVremya: "12-12-2023 / 08:30",
        patientFio: "Муканбетов Сүйүндүк Муканбетович",
        statusOms: "Застрахован",
        pin: "20504199900686",
        dataCreate: "07-12-2023",
        pripiska: false,
        byteQr:
            "iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAACQ0lEQVR4Xu2WQa7bMAxE6ZWPoZta0k19hC69Mss3copGCNBuiiKEiOB/mXwOoNGQivnfxA+bMx9jYVMsbIqFTbGwKRY2xb/AbiOqn8d+Vvd+lR7J/SS758JYP0wL/irxuDmPKmXCThMTybaLdDKH2ZERI2nFr4I4VlperAqQFPj8zon5LxHw9hVVvfiUEmFGRGn6kM2FPXHZpv+3ce5jPSINhiBsv/QLDaojRY0rSbdSKiy2f5Wb00eWiI1kNPUjUR6MPK6u3LaQlfu3tPFiIiyiqxok/cuJa2K/H30CbAiCJrG4GNSmOD7p9tWY078xrPTKzukHGUAfTkiEBdCYV1FlcVhxmTwwnJAJCzWM+SwD6HHHD/V6VEqE0cjVNZNpahZVnj+SYTtH3LX9+HT44kyzyeQJMMgaInDnBnBKE02w9174dszHcY+qTtw0vrq+IRWm0nYxsu5h+FCDCWZvgnw/dsOUm45+NfWzKF3fkgqLzsXV3EeuVwwb6DETNkrG9pvO3V9q/G7yHFhUjxDBYnahBn/ldkuGkUEBbR8PxNo/mfzrsR3SdtrZtK7R0XywfTJMexcDFlVkaXrMhXEZHXJ4G8rwS2NIlAobcb+ATSYfyoxSGgwAQYoHQwK3H6j0bvIEGOvRy5x16HDvJ4afBMmAAUgB5lWQzRQkU2LeJU7T1HJ+MxfK+bAYXM+U5pVm3LnvJk+AOduXFEFWmprHG7fnwow4LAYXw7nrJtqG1XNhf4yFTbGwKRY2xcKmWNgU/wf7CU4Q9yzS0JdNAAAAAElFTkSuQmCC");
    return data;
  }

  @override
  Future<List<PatientRegistrationData>?> getListTalonesRepo() async {
    final data = [
      const PatientRegistrationData(
        id: "0458df3a-c64e-4cb7-9ad2-04eaf0d7e3c3",
        ozParentName: "Нарынский областной центр семейной медицины",
        ozAdress: "Нарынская, Нарын",
        ozName: "ГСВ №1",
        doctorName: "Тынымсеитова Асбүбү  ",
        doctorSpecialnost: "Семейная медицина (общая врачебная практика)",
        etajCabinet: "1 / 20",
        dataVremya: "12-12-2023 / 08:30",
        patientFio: "Муканбетов Сүйүндүк Муканбетович",
        statusOms: "Застрахован",
        pin: "20504199900686",
        dataCreate: "07-12-2023",
        pripiska: false,
        byteQr:
            "iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAACQ0lEQVR4Xu2WQa7bMAxE6ZWPoZta0k19hC69Mss3copGCNBuiiKEiOB/mXwOoNGQivnfxA+bMx9jYVMsbIqFTbGwKRY2xb/AbiOqn8d+Vvd+lR7J/SS758JYP0wL/irxuDmPKmXCThMTybaLdDKH2ZERI2nFr4I4VlperAqQFPj8zon5LxHw9hVVvfiUEmFGRGn6kM2FPXHZpv+3ce5jPSINhiBsv/QLDaojRY0rSbdSKiy2f5Wb00eWiI1kNPUjUR6MPK6u3LaQlfu3tPFiIiyiqxok/cuJa2K/H30CbAiCJrG4GNSmOD7p9tWY078xrPTKzukHGUAfTkiEBdCYV1FlcVhxmTwwnJAJCzWM+SwD6HHHD/V6VEqE0cjVNZNpahZVnj+SYTtH3LX9+HT44kyzyeQJMMgaInDnBnBKE02w9174dszHcY+qTtw0vrq+IRWm0nYxsu5h+FCDCWZvgnw/dsOUm45+NfWzKF3fkgqLzsXV3EeuVwwb6DETNkrG9pvO3V9q/G7yHFhUjxDBYnahBn/ldkuGkUEBbR8PxNo/mfzrsR3SdtrZtK7R0XywfTJMexcDFlVkaXrMhXEZHXJ4G8rwS2NIlAobcb+ATSYfyoxSGgwAQYoHQwK3H6j0bvIEGOvRy5x16HDvJ4afBMmAAUgB5lWQzRQkU2LeJU7T1HJ+MxfK+bAYXM+U5pVm3LnvJk+AOduXFEFWmprHG7fnwow4LAYXw7nrJtqG1XNhf4yFTbGwKRY2xcKmWNgU/wf7CU4Q9yzS0JdNAAAAAElFTkSuQmCC",
      ),
      const PatientRegistrationData(
        id: "0458df3a-c64e-4cb7-9ad2-04eaf0d7e3c3",
        ozParentName: "Нарынский областной центр семейной медицины",
        ozAdress: "Нарынская, Нарын",
        ozName: "ГСВ №1",
        doctorName: "Тынымсеитова Асбүбү  ",
        doctorSpecialnost: "Семейная медицина (общая врачебная практика)",
        etajCabinet: "1 / 20",
        dataVremya: "12-12-2023 / 08:30",
        patientFio: "Муканбетов Сүйүндүк Муканбетович",
        statusOms: "Застрахован",
        pin: "20504199900686",
        dataCreate: "07-12-2023",
        pripiska: false,
        byteQr:
            "iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAACQ0lEQVR4Xu2WQa7bMAxE6ZWPoZta0k19hC69Mss3copGCNBuiiKEiOB/mXwOoNGQivnfxA+bMx9jYVMsbIqFTbGwKRY2xb/AbiOqn8d+Vvd+lR7J/SS758JYP0wL/irxuDmPKmXCThMTybaLdDKH2ZERI2nFr4I4VlperAqQFPj8zon5LxHw9hVVvfiUEmFGRGn6kM2FPXHZpv+3ce5jPSINhiBsv/QLDaojRY0rSbdSKiy2f5Wb00eWiI1kNPUjUR6MPK6u3LaQlfu3tPFiIiyiqxok/cuJa2K/H30CbAiCJrG4GNSmOD7p9tWY078xrPTKzukHGUAfTkiEBdCYV1FlcVhxmTwwnJAJCzWM+SwD6HHHD/V6VEqE0cjVNZNpahZVnj+SYTtH3LX9+HT44kyzyeQJMMgaInDnBnBKE02w9174dszHcY+qTtw0vrq+IRWm0nYxsu5h+FCDCWZvgnw/dsOUm45+NfWzKF3fkgqLzsXV3EeuVwwb6DETNkrG9pvO3V9q/G7yHFhUjxDBYnahBn/ldkuGkUEBbR8PxNo/mfzrsR3SdtrZtK7R0XywfTJMexcDFlVkaXrMhXEZHXJ4G8rwS2NIlAobcb+ATSYfyoxSGgwAQYoHQwK3H6j0bvIEGOvRy5x16HDvJ4afBMmAAUgB5lWQzRQkU2LeJU7T1HJ+MxfK+bAYXM+U5pVm3LnvJk+AOduXFEFWmprHG7fnwow4LAYXw7nrJtqG1XNhf4yFTbGwKRY2xcKmWNgU/wf7CU4Q9yzS0JdNAAAAAElFTkSuQmCC",
      ),
    ];
    return data;
  }

  @override
  Future<PatientRegistrationData?> getTalonRepo(String? id) async {
    const data = PatientRegistrationData(
      id: "0458df3a-c64e-4cb7-9ad2-04eaf0d7e3c3",
      ozParentName: "Нарынский областной центр семейной медицины",
      ozAdress: "Нарынская, Нарын",
      ozName: "ГСВ №1",
      doctorName: "Тынымсеитова Асбүбү  ",
      doctorSpecialnost: "Семейная медицина (общая врачебная практика)",
      etajCabinet: "1 / 20",
      dataVremya: "12-12-2023 / 08:30",
      patientFio: "Муканбетов Сүйүндүк Муканбетович",
      statusOms: "Застрахован",
      pin: "20504199900686",
      dataCreate: "07-12-2023",
      pripiska: false,
      byteQr:
          "iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAACQ0lEQVR4Xu2WQa7bMAxE6ZWPoZta0k19hC69Mss3copGCNBuiiKEiOB/mXwOoNGQivnfxA+bMx9jYVMsbIqFTbGwKRY2xb/AbiOqn8d+Vvd+lR7J/SS758JYP0wL/irxuDmPKmXCThMTybaLdDKH2ZERI2nFr4I4VlperAqQFPj8zon5LxHw9hVVvfiUEmFGRGn6kM2FPXHZpv+3ce5jPSINhiBsv/QLDaojRY0rSbdSKiy2f5Wb00eWiI1kNPUjUR6MPK6u3LaQlfu3tPFiIiyiqxok/cuJa2K/H30CbAiCJrG4GNSmOD7p9tWY078xrPTKzukHGUAfTkiEBdCYV1FlcVhxmTwwnJAJCzWM+SwD6HHHD/V6VEqE0cjVNZNpahZVnj+SYTtH3LX9+HT44kyzyeQJMMgaInDnBnBKE02w9174dszHcY+qTtw0vrq+IRWm0nYxsu5h+FCDCWZvgnw/dsOUm45+NfWzKF3fkgqLzsXV3EeuVwwb6DETNkrG9pvO3V9q/G7yHFhUjxDBYnahBn/ldkuGkUEBbR8PxNo/mfzrsR3SdtrZtK7R0XywfTJMexcDFlVkaXrMhXEZHXJ4G8rwS2NIlAobcb+ATSYfyoxSGgwAQYoHQwK3H6j0bvIEGOvRy5x16HDvJ4afBMmAAUgB5lWQzRQkU2LeJU7T1HJ+MxfK+bAYXM+U5pVm3LnvJk+AOduXFEFWmprHG7fnwow4LAYXw7nrJtqG1XNhf4yFTbGwKRY2xcKmWNgU/wf7CU4Q9yzS0JdNAAAAAElFTkSuQmCC",
    );
    return data;
  }

  @override
  Future<void> deleteTalonRepo(String? id) async {
    print('deleted');
  }

  @override
  Future<String?> getTalonPDF(String? id) async {
    return await Utils.downloadPdf(
      currentUrl: '/pdf',
      pdfPathName: '${id}talon.pdf',
      queryParameters: {
        'lang': 'ru',
        'Id': id,
      },
    );
  }
}
