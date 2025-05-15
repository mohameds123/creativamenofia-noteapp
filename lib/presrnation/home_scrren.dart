import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/logic/get_notes/state.dart';
import 'package:untitled3/presrnation/widgets/note_widget.dart';

import '../logic/get_notes/cubit.dart';
import 'create_note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNoteDataCubit(),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(18, 3, 17, 1),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              c) {
                            return CreateNoteScreen();
                          }));
                        },
                        canRequestFocus: false,
                        enableFeedback: false,
                        borderRadius: BorderRadius.circular(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 48,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          child: const Text("Add Note",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 19, 19, 19),
                              )),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        canRequestFocus: false,
                        enableFeedback: false,
                        borderRadius: BorderRadius.circular(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 48,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          child: const Text("Log out",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 19, 19, 19),
                              )),
                        )),
                  ],
                ),
                const SizedBox(height: 22),
                BlocBuilder<GetNoteDataCubit, GetNotesStates>(

                  builder: (context, state) {
                    if (state is GetNotesLoadingState){
                      return Center(child: Lottie.asset("assets/animation/loading.json"));
                    }else if (state is GetNotesSuccessState){
                      return SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: state.notesData.length,
                          itemBuilder: (context, index) {
                            return NoteWidget(
                              noteModel: state.notesData[index],
                            );
                          },
                        ),
                      );
                    }else if (state is GetNotesErrorState){
                      return Center(child: Text(state.em));

                    }else {
                      return SizedBox();
                    }

                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}