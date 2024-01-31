import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/core/utils/typedef.dart';
import 'package:mobile/features/auth/business/entities/login_entity.dart';
import 'package:mobile/features/auth/business/repos/auth_repo.dart';

///
/// Login usecase
/// User perform this action for authentication
class LoginUseCase extends UseCase<LoginEntity, MapData> {
  final AuthRepo _authRepo;
  LoginUseCase(this._authRepo);
  @override
  ResultType<LoginEntity> call(MapData? params) async =>
      await _authRepo.login(params!);
}
