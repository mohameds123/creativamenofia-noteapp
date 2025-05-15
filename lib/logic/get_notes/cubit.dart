import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/logic/get_notes/state.dart';

import '../../data/note_model.dart';

class GetNoteDataCubit extends Cubit <GetNotesStates>{
  GetNoteDataCubit () :super(GetNotesInitialState());

  Future getNoteData () async {
    emit(GetNotesLoadingState());
    try {
      final getData = await FirebaseFirestore.instance.collection("notesData").get();
      final notes = getData.docs
          .map((doc) => NoteModel.fromJson(doc.data())).toList();
      emit(GetNotesSuccessState(notesData: notes));
    }catch (e){
      emit(GetNotesErrorState(em: e.toString()));
    }
  }

}