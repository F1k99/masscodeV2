class User {
  final String id;
  final String name;
  final int AnnualLeaveBalance;
  final int AnnualLeaveTotal;
  final int SickLeaveBalance;
  final int SickLeaveTotal;
  final int HospitalisationBalance;
  final int HospitalisationTotal;

  User({
    required this.id,
    required this.name,
    required this.AnnualLeaveBalance,
    required this.AnnualLeaveTotal,
    required this.SickLeaveBalance,
    required this.SickLeaveTotal,
    required this.HospitalisationBalance,
    required this.HospitalisationTotal,
  });
}
