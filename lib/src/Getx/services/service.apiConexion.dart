import 'package:get/get.dart';

class GetDataProvider extends GetConnect {
  // Get request
  Future<Response> getItems() async => await get(
      'https://api.giphy.com/v1/gifs/search?api_key=IPFDJQRc6yKhv05Qx8P2cBQZuVq3iiPh&q=a&limit=5&offset=0&rating=g&lang=es');
}
