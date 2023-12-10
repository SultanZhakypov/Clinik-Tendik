class AuthRequest {
  final String inn;
  final String surname;
  final String name;
  final String patronymic;
  final String number;
  final bool whatsappNumber;
  final String address;

  AuthRequest({
    required this.inn,
    required this.surname,
    required this.name,
    required this.patronymic,
    required this.number,
    required this.whatsappNumber,
    required this.address,
  });
}
