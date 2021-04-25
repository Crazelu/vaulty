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

  static List<Account> accounts = [
    Account(
      appName: "Google",
      password: "",
      email: "test@gmail.com",
      imageUrl: "",
    ),
    Account(
      appName: "Netflix",
      password: "",
      email: "test@gmail.com",
      imageUrl:
          "https://simg.nicepng.com/png/small/151-1510639_netflix-app-icon-png.png",
    ),
    Account(
      appName: "Abeg App",
      password: "",
      userName: "Crazelu",
      email: "test@gmail.com",
      imageUrl:
          "https://play-lh.googleusercontent.com/Du1MJqGw7EvXrlNZlLWV4YgkJLmqqKWUkx-gtpszAePQo0z-TS4na29lmrlkPFmuNyE3",
    ),
    Account(
      appName: "Bamboo",
      password: "",
      email: "test@gmail.com",
      imageUrl:
          "https://media-exp1.licdn.com/dms/image/C4D0BAQGyWYlu5VgtpA/company-logo_200_200/0/1570814861373?e=2159024400&v=beta&t=WIjCrD28MnP6uA83WKq07oMCVM00x4dWbsah8rYsk38",
    ),
  ];
}
