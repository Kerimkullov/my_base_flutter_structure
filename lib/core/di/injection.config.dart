// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_beeline/core/repositories/sample_repository/sample_repository.dart'
    as _i5;
import 'package:my_beeline/core/services/http_service/api_client.dart' as _i3;
import 'package:my_beeline/features/bottom_bar/cubit/bottom_bar_cubit.dart'
    as _i4;
import 'package:my_beeline/features/main/bloc/main_bloc.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ApiClient>(() => _i3.ApiClient());
    gh.factory<_i4.BottomBarCubit>(() => _i4.BottomBarCubit());
    gh.factory<_i5.SampleRepository>(
        () => _i5.SampleRepository(gh<_i3.ApiClient>()));
    gh.factory<_i6.MainBloc>(() => _i6.MainBloc(gh<_i5.SampleRepository>()));
    return this;
  }
}
