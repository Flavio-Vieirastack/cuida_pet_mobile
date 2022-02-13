class UserModel {
  final String email;
  final String registerType;
  final String imageAvatar;
  UserModel({
    required this.email,
    required this.registerType,
    required this.imageAvatar,
  });

  UserModel.empty()
      : email = '',
        registerType = '',
        imageAvatar = '';
}
