class User {
  int id;
  String email;
  String username;
  String password;
  Map<String, String> name;
  Map<String, dynamic>? address;
  String? phone;

  User({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    this.address,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      email: data['email'],
      username: data['username'],
      password: data['password'],
      name: data['name'],
      address: data['address'],
      phone: data['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'password': password,
      'name': name,
      'address': address,
      'phone': phone,
    };
  }
}
