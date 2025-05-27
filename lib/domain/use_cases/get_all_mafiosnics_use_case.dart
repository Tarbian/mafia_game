
import 'package:Tests/data/repository/mafiosnics_repository/mafiosnics_repository.dart';
import 'package:Tests/domain/entities/mafiosnic.dart';

class GetAllMafiosnicsUseCase {
  final MafiosnicsRepository mafiosnicsRepository;

  GetAllMafiosnicsUseCase(this.mafiosnicsRepository);

  Future<List<Mafiosnic>> execute() => mafiosnicsRepository.getMafiosnicList();
}
