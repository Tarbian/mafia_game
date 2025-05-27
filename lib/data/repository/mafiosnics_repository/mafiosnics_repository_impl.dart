import 'package:Tests/data/dao/ai/generator/death_quote_generator.dart';
import 'package:Tests/data/dao/mock/mock_dao.dart';
import '../../../domain/entities/mafiosnic.dart';
import 'mafiosnics_repository.dart';

class MafiosnicsRepositoryImpl implements MafiosnicsRepository {
  final MockDao mockDao;
  final DeathQuoteGenerator deathQuoteGenerator;

  MafiosnicsRepositoryImpl(this.mockDao, this.deathQuoteGenerator);

  @override
  Future<List<Mafiosnic>> getMafiosnicList() => mockDao.getMafiosnics();

  @override
   //TODO add context
  Future<String> getDeathQuote() => deathQuoteGenerator.generate({});
}
