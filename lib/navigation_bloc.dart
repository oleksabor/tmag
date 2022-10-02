import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/resource_model.dart';

abstract class NavigationEvent {}

class NavigationResourcesEvent extends NavigationEvent {}

class NavigationOccuredEvent extends NavigationEvent {
  NavigationPageStatus status;

  NavigationOccuredEvent(this.status);
}

enum NavigationPageStatus {
  home,
  resources,
}

class NavigationState {
  NavigationState({this.status = NavigationPageStatus.home});

  NavigationPageStatus status;

  NavigationState.home() : this(status: NavigationPageStatus.home);
  NavigationState.resources() : this(status: NavigationPageStatus.resources);
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  ResourceModel res;

  NavigationBloc(this.res) : super(NavigationState.home()) {
    on<NavigationResourcesEvent>(_onNavigationResourcesEvent);
    on<NavigationOccuredEvent>(_onNavigationOccured);
  }

  Future<void> _onNavigationResourcesEvent(
      NavigationResourcesEvent event, Emitter<NavigationState> emit) async {
    return emit(NavigationState.resources());
  }

  Future<void> _onNavigationOccured(
      NavigationOccuredEvent event, Emitter<NavigationState> emit) async {
    return emit(NavigationState(status: event.status));
  }
}
