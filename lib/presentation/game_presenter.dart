import 'package:Tests/domain/use_cases/get_all_mafiosnics_use_case.dart';
import 'package:Tests/domain/use_cases/get_city_map_use_case.dart';
import 'package:Tests/domain/use_cases/get_news_use_case.dart';

class GamePresenter {
  final GetAllMafiosnicsUseCase getAllMafiosnicsUseCase;
  // final GenerateDeathQuoteUseCase generateDeathQuote;
  final GetNewsUseCase getNewsUseCase;
  final GetCityMapUseCase getCityMapUseCase;
  GamePresenter({
    required this.getAllMafiosnicsUseCase,
    // required this.generateDeathQuote,
    required this.getNewsUseCase,
    required this.getCityMapUseCase,
  });

  Future<void> showMafiosnicList() async {
    final mafiosnics = await getAllMafiosnicsUseCase.execute();
    print('=== 👥 Команда мафії ===');
    for (var m in mafiosnics) {
      print(
          '${m.name} | Роль: ${m.role.name} | HP: ${m.hp} | Сила: ${m.strength} | IQ: ${m.iq} | Удача: ${m.luck} | Навички: ${m.skill} | Лояльність: ${m.loyalty}');
    }
  }

  Future<void> showCityMap() async {
    final map = await getCityMapUseCase.execute();
    print('=== 🗺 Мапа міста: ${map.cityName} ===');
    for (var district in map.districts) {
      print('➡ Район: ${district.name}');
      for (var business in district.businesses) {
        print(
            '   - ${business.name} (${business.type.name}), Прибуток: \$${business.baseIncome}, Власник: ${business.owner}');
      }
    }
  }

  // void showDeathQuote() {
  //   final quote = generateDeathQuote.execute();
  //   print('💀 Передсмертна цитата: "$quote"');
  // }

  Future<void> showNews() async {
    final news = await getNewsUseCase.execute();
    print('🗞 Новини: $news');
  }
}
