import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/internet_blocs/internet_state.dart';
import '../blocs/internet_blocs/internet_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<InternetBloc,InternetState> (
            listener: (context,state) {
              if(state is InternetGainedState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Internet connected'),
                      backgroundColor: Colors.green,
                  ),
                );
              }
              else if(state is InternetLostState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Internet not connected'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context,state) {
              if(state is InternetGainedState) {
                return Text('Connected');
              } else if (state is InternetLostState) {
                return Text('Not Connected');
              } else {
                return Text('Loading..');
              }
            },
          )


            //BlocBuilder
          // BlocBuilder<InternetBloc,InternetState>(
          //   builder: (context, state) {
          //
          //     //if(state == )
          //     //== to check value
          //     //is to check data type
          //     //int a = 2;
          //     //if(a == 2)
          //     //if(a is int)
          //
          //     if(state is InternetGainedState) {
          //       return Text('Connected');
          //     } else if (state is InternetLostState) {
          //       return Text('Not Connected');
          //     } else {
          //       return Text('Loading..');
          //     }
          //   },
          // )
        )
      ),
    );
  }
}
