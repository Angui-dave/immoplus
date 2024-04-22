class User {
  String? name;
  String? prenom;
  String? email;

  User({
    this.name,
    this.prenom,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      prenom: json['prenom'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['prenom'] = prenom;
    data['email'] = email;
    return data;
  }
}
