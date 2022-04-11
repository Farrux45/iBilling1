part of 'container_bloc.dart';

@immutable
abstract class ContainerState {}

class ContainerInitial extends ContainerState {}

class BottomNavState extends ContainerState {
  BottomNavState();
}

class ContButtomState extends ContainerState {
  ContButtomState();
}

class LangState extends ContainerState {
  LangState();
}

class CreateState extends ContainerState {
  CreateState();
}

class PopapMenuState extends ContainerState{
  PopapMenuState();
}

class FarmConstState extends ContainerState{
  FarmConstState();
}
