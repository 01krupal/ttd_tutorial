// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:ttd_tutorial/core/errors/failure.dart';
import 'package:ttd_tutorial/src/authentication/domain/entities/user.dart';
import 'package:ttd_tutorial/utils/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultVoid createUser(
      {required String createdAt,
      required String name,
      required String avatar});

  ResultFuture<List<User>> getUsers();
}
