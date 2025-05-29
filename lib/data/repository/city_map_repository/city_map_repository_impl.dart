

import 'package:Tests/data/dao/mock_map/mock_city_map_dao.dart';
import 'package:Tests/data/repository/city_map_repository/city_map_repository.dart';
import 'package:Tests/domain/entities/city_map.dart';

class CityMapRepositoryImpl implements CityMapRepository {
  final CityMapDao cityMapDao;

  CityMapRepositoryImpl(this.cityMapDao);

  @override
  Future<CityMap> getCityMap() => cityMapDao.getCityMap();
}
