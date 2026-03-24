import 'dart:convert';
import 'package:final_exam/models/users_model.dart';
import 'package:http/http.dart' as http;

class UsersService {
  static const _baseUrl = 'https://69c2a0217518bf8facbefdbe.mockapi.io/users';

  Future<List<UsersModel>> getUsers() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode != 200) {
      throw Exception("Error");
    }

    return (jsonDecode(response.body) as List)
        .map((e) => UsersModel.fromJson(e))
        .toList();
  }

  Future<UsersModel> getUsersbyId(String id) async {
    final response = await http.get(Uri.parse('$_baseUrl/$id'));

    if (response.statusCode != 200) {
      throw Exception("Error");
    }

    return UsersModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  Future<UsersModel> createUser({
    required String name,
    required String avatar,
    required String address,
  }) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'avatar': avatar, 'address': address}),
    );

    if (response.statusCode != 201) {
      throw Exception("Error creating user");
    }

    return UsersModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  Future<UsersModel> updateUser({
    required String id,
    required String name,
    required String avatar,
    required String address,
  }) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$id'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'avatar': avatar, 'address': address}),
    );

    if (response.statusCode != 200) {
      throw Exception("Error updating user");
    }

    return UsersModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  Future<void> deleteUser(String id) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$id'));

    if (response.statusCode != 200) {
      throw Exception("Error deleting user");
    }
  }
}
