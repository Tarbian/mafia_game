import 'package:Tests/data/dao/mock_map/mock_city_map_dao.dart';
import 'package:Tests/domain/entities/city_map.dart';

class CityMapDaoImpl extends CityMapDao {
  @override
  Future<CityMap> getCityMap() async {
    return CityMap(
      cityName: 'San-Bruno',
      districts: [
        District(
          name: 'Bronx',
          businesses: [
            Business(
                name: 'Bronx Bank', type: BusinessType.bar, baseIncome: 200),
            Business(
                name: 'Bronx Auto',
                type: BusinessType.autoservice,
                baseIncome: 300),
          ],
        ),
        District(
          name: 'Downtown',
          businesses: [
            Business(
                name: 'Downtown Casino',
                type: BusinessType.casino,
                baseIncome: 500),
            Business(
                name: 'Downtown Club',
                type: BusinessType.club,
                baseIncome: 350),
          ],
        ),
        District(
          name: 'Industrial zone',
          businesses: [
            Business(
                name: 'Industrial Warehouse',
                type: BusinessType.warehouse,
                baseIncome: 400),
            Business(
                name: 'Industrial Bar',
                type: BusinessType.bank,
                baseIncome: 600),
          ],
        ),
      ],
    );
  }
}
