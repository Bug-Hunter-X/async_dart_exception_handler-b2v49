```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    //More specific handling.  This will allow you to see the exception, and its stack trace which may help in diagnosing the root cause of the issue
    print('Error fetching data: $e');
    print('Stack trace: $stacktrace');
  }
}
```