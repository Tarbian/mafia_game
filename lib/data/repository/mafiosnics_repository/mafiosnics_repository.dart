import '../../../domain/entities/mafiosnic.dart';

abstract class MafiosnicsRepository {
  Future<List<Mafiosnic>> getMafiosnicList();
  Future<String> getDeathQuote();
}

