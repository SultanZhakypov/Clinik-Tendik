class PatientRegistrationRequest {
  PatientRegistrationRequest({
    this.patientId,
    this.number,
    this.organisationAndApplicationUserId,
    this.registrationDate,
  });

  final int ? patientId;
  final String ?number;
  final int ? organisationAndApplicationUserId;
  final DateTime? registrationDate;
}
