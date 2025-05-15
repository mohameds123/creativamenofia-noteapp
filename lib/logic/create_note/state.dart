class CreateNotesStates {}

class CreateNotesInitialState extends CreateNotesStates{}

class CreateNotesLoadingState extends CreateNotesStates{}

class CreateNotesSuccessState extends CreateNotesStates{}

class CreateNotesErrorState extends CreateNotesStates{
  String em;
  CreateNotesErrorState({required this.em});
}
