import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Connection {
  var jsonResponse;

  void req() async {
    var url = Uri.https("www.gamerpower.com", "/api/giveaways");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      jsonResponse = convert.jsonDecode(response.body);
    } else {
      print("error");
    }

    //print(itemCount);
  }
}
