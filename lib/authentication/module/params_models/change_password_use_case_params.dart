class ChangePasswordUseCaseParams {
  final int userId;
  final String newPassword;
  ChangePasswordUseCaseParams(
      {required this.newPassword, required this.userId});
}
