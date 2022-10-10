// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'dao/db_unit.dart' as _i3;
import 'day_unit_model.dart' as _i9;
import 'resource_model.dart' as _i4;
import 'template_model.dart' as _i5;
import 'time_unit_model.dart' as _i6;
import 'work_type_model.dart' as _i7;
import 'work_unit_model.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.DbUnit>(_i3.DbUnit());
  gh.factory<_i4.ResourceModel>(() => _i4.ResourceModel(get<_i3.DbUnit>()));
  gh.factory<_i5.TemplateModel>(() => _i5.TemplateModel(get<_i3.DbUnit>()));
  gh.factory<_i6.TimeUnitModel>(() => _i6.TimeUnitModel(get<_i3.DbUnit>()));
  gh.factory<_i7.WorkTypeModel>(() => _i7.WorkTypeModel(get<_i3.DbUnit>()));
  gh.factory<_i8.WorkUnitModel>(() => _i8.WorkUnitModel(get<_i3.DbUnit>()));
  gh.factory<_i9.DayUnitModel>(() => _i9.DayUnitModel(get<_i3.DbUnit>()));
  return get;
}
