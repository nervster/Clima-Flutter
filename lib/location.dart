import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Position position;

  Future<void> getCurrentLocation() async {
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print(position);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
