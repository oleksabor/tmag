import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/dao/work_type.dart';
import 'package:tmag/classes/work_type_model.dart';

abstract class WorkTypeEvent {}

class WorkTypeLoadEvent extends WorkTypeEvent {}

enum WorkTypeStatus { load, add, update, delete }

class WorkTypeState {
  WorkTypeStatus status;
  List<WorkType>? items;
  WorkTypeState(this.status, {this.items});

  WorkTypeState.load() : this(WorkTypeStatus.load);
}

class WorkTypeBloc extends Bloc<WorkTypeEvent, WorkTypeState> {
  WorkTypeModel model;
  WorkTypeBloc(this.model) : super(WorkTypeState.load()) {
    on<WorkTypeLoadEvent>(_onWorkTypeLoad);
  }

  Future<void> _onWorkTypeLoad(
      WorkTypeEvent event, Emitter<WorkTypeState> emit) async {
    emit(WorkTypeState(WorkTypeStatus.load, items: await model.loadAll()));
  }
}
