///Represents an account for which user can store password
class Account {
  final String appName;
  final String? url;
  final String? email;
  final String? userName;
  final String password;
  final String? imageUrl;

  Account({
    required this.appName,
    required this.password,
    this.url,
    this.email,
    this.userName,
    this.imageUrl,
  });
}
