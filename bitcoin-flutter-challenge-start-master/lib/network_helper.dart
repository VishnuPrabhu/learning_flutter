import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

const urlPrefix = 'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class NetworkHelper {
  Future<String> getBitcoinValueFor({String currency = 'USD'}) async {
    var url = '$urlPrefix/BTC$currency';
    print(url);
    http.Response response = await http.get(url);
    var data = response.body;
    if (data != null) {
      var value = jsonDecode(data)['last'];
      return value.toString();
    } else {
      throw HttpException('Data is null');
    }
  }
}
