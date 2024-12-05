```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error fetching data: $e');
    //Here is the problem.  This will not show the actual error.   The type of e might be String, but it might also be some unexpected type.   The error type may have additional helpful info
  }
}
```