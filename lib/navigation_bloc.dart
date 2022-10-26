import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/resource_model.dart';
import 'package:tmag/classes/work_type_model.dart';

abstract class NavigationEvent {}

class NavigationResourcesEvent extends NavigationEvent {}

class NavigationWorkTypesEvent extends NavigationEvent {}

class NavigationOccuredEvent extends NavigationEvent {
  NavigationPageStatus status;

  NavigationOccuredEvent(this.status);
}

enum NavigationPageStatus {
  home,
  resources,
  workTypes,
}

class NavigationState {
  NavigationState({this.status = NavigationPageStatus.home});

  NavigationPageStatus status;

  NavigationState.home() : this(status: NavigationPageStatus.home);
  NavigationState.resources() : this(status: NavigationPageStatus.resources);
  NavigationState.workTypes() : this(status: NavigationPageStatus.workTypes);
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  ResourceModel res;
  WorkTypeModel workType;

  NavigationBloc(this.res, this.workType) : super(NavigationState.home()) {
    on<NavigationResourcesEvent>(_onNavigationResourcesEvent);
    on<NavigationWorkTypesEvent>(_onNavigationWorkTypesEvent);
    on<NavigationOccuredEvent>(_onNavigationOccured);
  }

  Future<void> _onNavigationResourcesEvent(
      NavigationResourcesEvent event, Emitter<NavigationState> emit) async {
    return emit(NavigationState.resources());
  }

  Future<void> _onNavigationWorkTypesEvent(
      NavigationWorkTypesEvent event, Emitter<NavigationState> emit) async {
    return emit(NavigationState.workTypes());
  }

  Future<void> _onNavigationOccured(
      NavigationOccuredEvent event, Emitter<NavigationState> emit) async {
    return emit(NavigationState(status: event.status));
  }
}
