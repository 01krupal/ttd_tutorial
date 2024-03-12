import 'package:equatable/equatable.dart';
import 'package:ttd_tutorial/src/authentication/domain/repositories/auth_repo.dart';
import 'package:ttd_tutorial/usecase/usecase.dart';
import 'package:ttd_tutorial/utils/typedef.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  CreateUser(this._repository);

  final AuthRepo _repository;

  @override
  ResultFuture call(CreateUserParams params) async => _repository.createUser(
      createdAt: params.createdAt, name: params.name, avatar: params.avatar);
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  final String createdAt;
  final String name;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [createdAt, name, avatar];
}
