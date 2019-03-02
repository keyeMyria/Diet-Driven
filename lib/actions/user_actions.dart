library user_actions;

import 'package:built_redux/built_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'user_actions.g.dart';

///
abstract class UserActions extends ReduxActions {
  //
  ActionDispatcher<FirebaseUser> anonymousUserLoaded;

  //
  ActionDispatcher<dynamic> anonymousUserFail;

  //
  ActionDispatcher<FirebaseUser> authStateChanged;

  //
  ActionDispatcher logout;

  factory UserActions() => new _$UserActions();
  UserActions._();
}