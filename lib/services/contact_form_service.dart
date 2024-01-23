import 'dart:convert';

import 'package:http/http.dart' as http;

class ContactFormService {
  static const reqUrl =
      "https://firestore.googleapis.com/v1/projects/the-social-chutney-b18b7/databases/(default)/documents/website-queries";
  Future<bool> submitContactDetails({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String subject,
  }) async {
    http.Response response = await http.post(Uri.parse(reqUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          "fields": {
            "first-name": {"stringValue": firstName},
            "last-name": {"stringValue": lastName},
            "phone": {"stringValue": phoneNumber},
            "email": {"stringValue": email},
            "subject": {"stringValue": subject},
            "date-time": {"stringValue": DateTime.now().toIso8601String()},
          }
        }));

    if (response.statusCode == 200) {
      return false;
    }

    return false;
  }
}
