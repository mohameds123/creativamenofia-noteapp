import 'package:untitled3/data/note_model.dart';

class GetNotesStates {}

class GetNotesInitialState extends GetNotesStates{}

class GetNotesLoadingState extends GetNotesStates{}

class GetNotesSuccessState extends GetNotesStates{
  final List <NoteModel> notesData ;
  GetNotesSuccessState ({required this.notesData});
}

class GetNotesErrorState extends GetNotesStates{
  final String em;
  GetNotesErrorState({required this.em});
}
