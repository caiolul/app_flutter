import 'dart:async';
import 'package:Controlle_Interno/model/user_model.dart';
import 'package:meta/meta.dart';
import 'package:Controlle_Interno/model/api_user.dart';
import 'package:Controlle_Interno/api/api_connection.dart';
import 'package:Controlle_Interno/dao/user_dao.dart';

class UserRepository {
  final userDao = UserDao();

  Future<User> authenticate ({
    @required String username,
    @required String password,
  }) async {
    UserLogin userLogin = UserLogin(
      username: username,
      password: password
    );
    Token token = await getToken(userLogin);
    User user = User(
      id: 0,
      username: username,
      token: token.token,
    );
    return user;
  }

  Future<void> persistToken ({
    @required User user
    }) async {
    // write token with the user to the database
      await userDao.createUser(user);
  }

  Future <void> delteToken({
    @required int id
  }) async {
    await userDao.deleteUser(id);
  }

  Future <bool> hasToken() async {
    bool result = await userDao.checkUser(0);
    return result;
  }
}