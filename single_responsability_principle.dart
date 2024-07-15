// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String name;
  String email;
  User(
    this.name,
    this.email,
  );

   //this violates Srp
  // void saveUSerToDataBase() {
  //   //save user to the database
  // }

 
  // void showWelcomeMessage() {
  //   print('welcome, $name!');
  // }
}


class USerRepository {
   void saveUSerToDataBase() {
    //save user to the database
  }
}

class UserView {
   void showWelcomeMessage(User user) {
    print('welcome, ${user.name}!');
  }
}
