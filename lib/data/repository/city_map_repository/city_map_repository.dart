import 'package:Tests/domain/entities/city_map.dart';

abstract class CityMapRepository {
  Future<CityMap> getCityMap();
}
