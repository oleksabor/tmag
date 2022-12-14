import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/resource_model.dart';
import 'package:tmag/navigation_bloc.dart';
import 'package:tmag/views/home_page.dart';
import 'package:tmag/views/resources_view.dart';
import 'package:tmag/views/splash_page.dart';
import 'package:tmag/views/work_types_view.dart';
import 'package:tmag/classes/work_type_model.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.resourcesRepository,
    required this.workTypesRepository,
  });

  final ResourceModel resourcesRepository;
  final WorkTypeModel workTypesRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => resourcesRepository),
        RepositoryProvider(create: (_) => workTypesRepository),
      ],
      child: BlocProvider(
        create: (_) {
          var nb = NavigationBloc(
            resourcesRepository,
            workTypesRepository,
          );
          nb.add(NavigationOccuredEvent(NavigationPageStatus.home));
          return nb;
        },
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<NavigationBloc, NavigationState>(
          listener: (context, state) {
            print("blocListener is running");
            switch (state.status) {
              case NavigationPageStatus.home:
                _navigator.pushAndRemoveUntil<void>(
                  HomePage.route(),
                  (route) => false,
                );
                break;
              case NavigationPageStatus.resources:
                _navigator.push<void>(
                  ResourcesView.route(),
                );
                break;
              case NavigationPageStatus.workTypes:
                _navigator.push<void>(
                  WorkTypesView.route(),
                );
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
