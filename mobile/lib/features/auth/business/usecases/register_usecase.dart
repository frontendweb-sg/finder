import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/core/utils/typedef.dart';
import 'package:mobile/features/auth/business/repos/auth_repo.dart';

class RegisterUseCase extends UseCase<void, MapData> {
  final AuthRepo _authRepo;
  RegisterUseCase(this._authRepo);
  @override
  ResultVoid call(MapData? params) async => await _authRepo.register(params!);
}
