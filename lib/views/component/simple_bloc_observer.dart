import 'package:bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver{

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(onTransition);
  }
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print(onChange);
  }@override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print(error);
  }
}