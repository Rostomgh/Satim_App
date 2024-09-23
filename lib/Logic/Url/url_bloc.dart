import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'url_event.dart';
part 'url_state.dart';

class UrlBloc extends Bloc<UrlEvent, UrlState> {
  UrlBloc() : super(UrlInitial()) {
    on<UrlEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
