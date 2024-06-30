// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "errorOccured": MessageLookupByLibrary.simpleMessage("Error Occured"),
        "hello": MessageLookupByLibrary.simpleMessage("hello"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "pleaseEnterEmail":
            MessageLookupByLibrary.simpleMessage("Please enter email"),
        "pleaseEnterPassword":
            MessageLookupByLibrary.simpleMessage("Please enter password"),
        "pleaseEnterValidEmail":
            MessageLookupByLibrary.simpleMessage("Please enter valid email"),
        "pleaseEnterValidPassword":
            MessageLookupByLibrary.simpleMessage("Please enter valid password"),
        "signupSuccess": MessageLookupByLibrary.simpleMessage("Signup Success"),
        "validatePasswordLenght": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 8 characters long"),
        "validatePasswordLowercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one lowercase letter"),
        "validatePasswordNumber": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one number"),
        "validatePasswordSpecialCharacter":
            MessageLookupByLibrary.simpleMessage(
                "Password must contain at least one special character"),
        "validatePasswordUppercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one uppercase letter")
      };
}
