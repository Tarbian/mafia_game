import 'package:Tests/data/repository/city_map_repository/city_map_repository.dart';
import 'package:Tests/domain/entities/city_map.dart';

class GetCityMapUseCase {
  final CityMapRepository cityMapRepository;

  GetCityMapUseCase(this.cityMapRepository);

  Future<CityMap> execute() => cityMapRepository.getCityMap();
}
