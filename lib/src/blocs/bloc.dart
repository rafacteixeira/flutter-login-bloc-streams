import 'dart:async';
import '../mixins/validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  //Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);

  Stream<String> get password =>
      _password.stream.transform(validatePassword);

  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  //Change data
  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changePassword => _password.sink.add;

  submit() {
    final email = _email.value;
    final password = _password.value;
    print("Valid email is $email, and valid password is $password");
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
