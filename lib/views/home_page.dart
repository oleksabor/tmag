import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/navigation_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                // final userId = context.select(
                //   (AuthenticationBloc bloc) => bloc.state.user.id,
                // );
                return Text('home page');
              },
            ),
            ElevatedButton(
              child: const Text('resources'),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              onPressed: () {
                context.read<NavigationBloc>().add(NavigationResourcesEvent());
              },
            ),
            ElevatedButton(
              child: const Text('types'),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
              onPressed: () {
                context.read<NavigationBloc>().add(NavigationWorkTypesEvent());
              },
            ),
          ],
        ),
      ),
    );
  }
}
