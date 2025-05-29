enum BusinessType {
  bar,
  casino,
  autoservice,
  warehouse,
  club,
  bank,
}

class Business {
  final String name;
  final BusinessType type;
  final int baseIncome;
  String owner;
  bool isRaided;

  Business({
    required this.name,
    required this.type,
    required this.baseIncome,
    this.owner = 'free',
    this.isRaided = false,
  });
}

class District {
  final String name;
  final List<Business> businesses;

  District({
    required this.name,
    required this.businesses,
  });
}

class CityMap {
  final String cityName;
  final List<District> districts;

  CityMap({
    required this.cityName,
    required this.districts,
  });
}
