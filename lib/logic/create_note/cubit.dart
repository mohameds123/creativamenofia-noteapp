import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/data/note_model.dart';
import 'package:untitled3/logic/create_note/state.dart';

class CreateNoteCubit extends Cubit<CreateNotesStates>{
  CreateNoteCubit () :super(CreateNotesInitialState());

  /// Function to post note
  Future createNote (NoteModel x) async {
    emit(CreateNotesLoadingState());
    try{
      await FirebaseFirestore.instance.collection("notesData").add(x.toJson());

      emit(CreateNotesSuccessState());
    }catch (e){
      emit(CreateNotesErrorState(em: e.toString()));
    }
  }

}