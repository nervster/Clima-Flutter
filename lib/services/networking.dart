import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      String data = res.body;
      print(data);

      var decoded = jsonDecode(data);
      return decoded;
    } else {
      print(res.statusCode);
    }
  }
}
