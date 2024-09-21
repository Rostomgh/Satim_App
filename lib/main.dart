import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satim_hack/Logic/bloc/auth_bloc.dart';
import 'package:satim_hack/core/Router/OngenerateRoute.dart';
import 'package:satim_hack/core/Ui/LogoScreen.dart';
import 'package:satim_hack/core/helper/BlocObserve.dart';
import 'package:satim_hack/core/helper/DioHelper.dart';
import 'package:satim_hack/features/Auth/data/domain/repo/repoAuthImpl.dart';

void main() async {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(AuthRepo()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        onGenerateRoute: (settings) => AppRoute().generateRoute(settings),
        home: LogoScreen(),
      ),
    );
  }
}
