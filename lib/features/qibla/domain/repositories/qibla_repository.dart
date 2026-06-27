import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';

abstract class QiblaRepository {
  Stream<CompassEvent> getCompassStream();
  Future<Position> getCurrentLocation();
  double calculateQiblaDirection(double lat, double lng);
}
