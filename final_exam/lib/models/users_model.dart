class UsersModel {
  final String id;
  final String name;
  final String avatar;
  final String address;

  UsersModel({
    required this.id,
    required this.name,
    required this.avatar,
    required this.address,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      id: json['id'],
      name: json['name'],
      avatar: json['avatar'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'avatar': avatar, 'address': address};
  }
}
