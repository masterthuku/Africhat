import 'package:africhat/features.auth/domain/entities/user_entity.dart';
import 'package:africhat/features.auth/domain/repositories/auth_repo.dart';


class RegisterUseCase {
  final AuthRepository authRepository;

  RegisterUseCase({required this.authRepository});

  Future<UserEntity>call(String username, String email, String password) {
    return authRepository.register(username, email, password);
  }

}