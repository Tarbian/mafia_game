import 'package:Tests/domain/entities/city_map.dart';

abstract class CityMapDao {
  Future<CityMap> getCityMap();
}