import 'package:equatable/equatable.dart';
import 'package:mobile/core/utils/role.dart';

///
/// Login entity
///
class LoginEntity extends Equatable {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final Role role;
  final bool emailVerified;
  final String accessToken;
  final int expireIn;
  final bool active;

  const LoginEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.role,
    required this.emailVerified,
    required this.accessToken,
    required this.expireIn,
    required this.active,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        mobile,
        role,
        emailVerified,
        accessToken,
        expireIn,
        active,
      ];
}
