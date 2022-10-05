// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'dao/db_unit.dart' as _i3;
import 'day_unit_model.dart' as _i7;
import 'resource_model.dart' as _i4;
import 'time_unit_model.dart' as _i5;
import 'work_type_model.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.DbUnit>(_i3.DbUnit());
  gh.factory<_i4.ResourceModel>(() => _i4.ResourceModel(get<_i3.DbUnit>()));
  gh.factory<_i5.TimeUnitModel>(() => _i5.TimeUnitModel(get<_i3.DbUnit>()));
  gh.factory<_i6.WorkTypeModel>(() => _i6.WorkTypeModel(get<_i3.DbUnit>()));
  gh.factory<_i7.DayUnitModel>(() => _i7.DayUnitModel(get<_i3.DbUnit>()));
  return get;
}
