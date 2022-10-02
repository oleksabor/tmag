import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/resource_model.dart';

abstract class ResourceEvent {}

class ResourceLoadEvent extends ResourceEvent {}

enum ResourceStatus { load, add, update, delete }

class ResourceState {
  ResourceStatus status;
  List<Resource>? items;
  ResourceState(this.status, {this.items});

  ResourceState.load() : this(ResourceStatus.load);
}

class ResourceBloc extends Bloc<ResourceEvent, ResourceState> {
  ResourceModel model;
  ResourceBloc(this.model) : super(ResourceState.load()) {
    on<ResourceLoadEvent>(_onResourceLoad);
  }

  Future<void> _onResourceLoad(
      ResourceEvent event, Emitter<ResourceState> emit) async {
    emit(ResourceState(ResourceStatus.load, items: await model.loadAll()));
  }
}
