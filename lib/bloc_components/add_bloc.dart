// ignore_for_file: constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';

enum ButtonEvent { event_add, event_clear }

class AddBloc extends Bloc<ButtonEvent, List> {
  String _listcontent = '';

  AddBloc(List initialState) : super(initialState);

  Stream<List> mapEventToState(ButtonEvent event) async* {
    _listcontent = (event == ButtonEvent.event_add)
        ? GroupFormWidgetModel().addlistcontent
        : _listcontent;
    _listcontent = (event == ButtonEvent.event_clear)
        ? GroupFormWidgetModel().addlistcontent
        : _listcontent;
  }
}

class GroupFormWidgetModel {
  var addlistcontent = '';
}
