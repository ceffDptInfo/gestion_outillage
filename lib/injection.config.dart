// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i15;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/nav_drawer/nav_drawer_bloc.dart' as _i9;
import 'application/outils/outil_actor/outil_actor_bloc.dart' as _i10;
import 'application/outils/outils_watcher/outils_firebase/outils_firebase_watcher_bloc.dart'
    as _i11;
import 'application/outils/outils_watcher/outils_watcher_bloc.dart' as _i12;
import 'application/outils/outils_watcher/user_outils_watcher/user_outils_watcher_bloc.dart'
    as _i14;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/outils/i_outils_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i16;
import 'infrastructure/outils/outils_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.IAuthFacade>(
      () => _i6.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i7.IOutilsRepository>(() => _i8.Outilsrepository());
  gh.factory<_i9.NavDrawerBloc>(() => _i9.NavDrawerBloc());
  gh.factory<_i10.OutilActorBloc>(
      () => _i10.OutilActorBloc(get<_i7.IOutilsRepository>()));
  gh.factory<_i11.OutilsFirebaseWatcherBloc>(
      () => _i11.OutilsFirebaseWatcherBloc(get<_i7.IOutilsRepository>()));
  gh.factory<_i12.OutilsWatcherBloc>(
      () => _i12.OutilsWatcherBloc(get<_i7.IOutilsRepository>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i14.UserOutilsWatcherBloc>(
      () => _i14.UserOutilsWatcherBloc(get<_i7.IOutilsRepository>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i5.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
