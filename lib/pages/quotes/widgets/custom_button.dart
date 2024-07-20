import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/pages/quotes/bloc/bloc/quote_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap : (){
        BlocProvider.of<QuoteBloc>(context).add(QuoteRequestEvent());
      },
      child : Material(
        elevation : 20,
        borderRadius : BorderRadius.circular(15),
        child : Container(
          decoration: BoxDecoration(
            borderRadius :  BorderRadius.circular(15),
            color: Colors.green[100]
          ),
          child : Padding(
            padding : EdgeInsets.symmetric(horizontal :10, vertical: 15 ),
            child: Text("Generate"),
          ),
        )
      )
    );
  }
}