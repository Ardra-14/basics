import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/pages/quotes/bloc/bloc/quote_bloc.dart';
import 'package:my_app/pages/quotes/widgets/custom_button.dart';
import 'package:my_app/pages/quotes/widgets/error_message.dart';
import 'package:my_app/pages/quotes/widgets/quote_widget.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pink[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text("Quotes"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            // SizedBox(height: 30,),
            // ErrorMessage(msg: 'Some error occured'),
            // SizedBox(height: 30,),

            // SizedBox(height: 30,),
            Expanded(
              child: Center(child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return Text('Your quote will display here..');
                  } else if (state is QuoteStateLoading) {
                    return CircularProgressIndicator(
                      color: Colors.blue,
                    );
                  } else if (state is QuoteStateLoaded) {
                    return QuoteWidget(quote: state.quote);
                  } else if (state is QuoteStateError) {
                    return ErrorMessage(msg: state.msg);
                  }
                  return ErrorMessage(msg: "Something went wrong");
                },
              )),
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
