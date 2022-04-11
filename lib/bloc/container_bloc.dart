import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';

part 'container_state.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit() : super(ContainerInitial());

  int bottomIndex = 0;
  bool visible = true;
  bool showCreate = false;

  void bottomChange(item) {
    bottomIndex = item;
    bottomIndex == 2 ? showCreate = true : showCreate = false;
    (bottomIndex == 4 || bottomIndex == 2) ? visible = false : visible = true;
    emit(BottomNavState());
  }

  int containerButtom = 0;

  void contButtomAdd(index) {
    containerButtom = index;
    emit(ContButtomState());
  }

  List langs = ["O'zbek (Lotin)", "Русский", "English (USA)"];
  List newLang = [const Locale("uz"), const Locale("ru"), const Locale("eng")];
  int langIndex = 2;
  String lang = "English (USA)";
  int oldIndex = 0;
  bool langBool = false;
  bool langDialog = false;

  void langAdd(v) {
    oldIndex = langIndex;
    langIndex = v;
    langBool = true;
    lang = langs[langIndex];
    emit(LangState());
  }

  void langDone(BuildContext context) {
    context.setLocale(newLang[langIndex]);
    langDialog = false;
    emit(LangState());
  }

   void addLangDialog(){
    langDialog = true;
    emit(LangState());
  }


  void langCancel(){
    langBool = false;
    langDialog = false;
    langIndex = oldIndex;
    emit(LangState());
  }

  int createIndex = 0;

  void addCreate(i) {
    showCreate = false;
    createIndex = i;
    emit(CreateState());
  }

  bool faceVisible = false;
  bool statusVisible = false;

  void faceUse() {
    faceVisible = !faceVisible;
    statusVisible = false;
    emit(PopapMenuState());
  }
  void statusUse(){
    statusVisible = !statusVisible;
    faceVisible = false;
    emit(PopapMenuState());
  }

  List contBool = List.generate(10, (index) => false);

  void addFarmCont({length, index}) {
    contBool[index] = true;
    emit(FarmConstState());
  }

  void removeFarmCont({length, index}) {
    contBool[index] = false;
    emit(FarmConstState());
  }
}
