import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'widget_event.dart';
part 'widget_state.dart';

class WidgetBloc extends Bloc<WidgetEvent, WidgetState> {
  WidgetBloc() : super(WidgetInitial()) {
    on<WidgetEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
