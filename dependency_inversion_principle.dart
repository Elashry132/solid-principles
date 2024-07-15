// ignore_for_file: public_member_api_docs, sort_constructors_first
//bad code
// class User {
//   String name;
//   User(
//     this.name,
//   );
// }

// class MySqlDatabase {
//   void saveUser(User user) {
//     print('Saving ${user.name} to mysql database...');
//     //Actual Code
//   }
// }

// class UserService {
//   MySqlDatabase database;
//   UserService(
//     this.database,
//   );

//   void saveUSer(User user) {
//     database.saveUser(user);
//   }
// }

//good code
abstract class DataBase {
  void saveUser(User user);
}

class User {
  String name;
  User(
    this.name,
  );
}

class MySqlDatabase implements DataBase {
  @override
  void saveUser(User user) {
    print('Saving ${user.name} to mysql database...');
    //Actual Code
  }
}

class PostgreSqlDatabase implements DataBase {
  @override
  void saveUser(User user) {
    print('Saving ${user.name} to postgreSql database...');
    //Actual Code
  }
}

class UserService {
  DataBase database;
  UserService(
    this.database,
  );

  void saveUser(User user) {
    database.saveUser(user);
  }
}
