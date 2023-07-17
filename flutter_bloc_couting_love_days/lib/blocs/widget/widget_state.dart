part of 'widget_bloc.dart';

abstract class WidgetState extends Equatable {
  const WidgetState();
  
  @override
  List<Object> get props => [];
}

class WidgetInitial extends WidgetState {}
