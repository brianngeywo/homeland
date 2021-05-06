import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homeland/cubit/todo_cubit.dart';

class MyApp extends StatelessWidget {
  String name;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50,),
          child: Column(
            children: [
              BlocBuilder<TodoCubit, TodoState>(
                builder: (context, state) {
                  return Text(state.name+"jnkdscndskj");
                },
              ),
              Text("dbjdbshdsj"),
              TextField(
                decoration: InputDecoration(),
                onChanged: (value) {
                  name = value;
                },
              ),
              MaterialButton(
                onPressed: () => BlocProvider.of<TodoCubit>(context).addTodo(name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
