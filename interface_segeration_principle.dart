//bad code
// abstract class SmartDevice {
//   void makeCall();
//   void sendEmail();
//   void browseInternet();
//   void takePicture();
// }

// class SmartPhone implements SmartDevice {
//   @override
//   void browseInternet() {
//     print('Making a call...');
//   }

//   @override
//   void makeCall() {
//     print('sneding an email...');
//   }

//   @override
//   void sendEmail() {
//     print('browsing the internet...');
//   }

//   @override
//   void takePicture() {
//     print('taking a picture...');
//   }
// }

// class SmartWatch implements SmartDevice {
//   @override
//   void browseInternet() {
//     throw UnimplementedError('this device cannot browse internet');
//   }

//   @override
//   void makeCall() {
//     print('Making a call...');
//   }

//   @override
//   void sendEmail() {
//   throw UnimplementedError('this device cannot sned emails');
//   }

//   @override
//   void takePicture() {
//     throw UnimplementedError('this device cannot take pictures');
//   }
// }

// good code
abstract class Phone {
  void makeCall();
}

abstract class EmailDevice {
  void sendEmail();
}

abstract class WebBrowser {
  void browseInternet();
}

abstract class Camera {
  void takePicture();
}

class SmartWatch implements Phone {
  @override
  void makeCall() {
    print('Making a call...');
  }
}

class SmartPhone implements Phone , EmailDevice,WebBrowser , Camera {
   @override
  void browseInternet() {
    print('Making a call...');
  }

  @override
  void makeCall() {
    print('sneding an email...');
  }

  @override
  void sendEmail() {
    print('browsing the internet...');
  }

  @override
  void takePicture() {
    print('taking a picture...');
  }
  
}
