import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  final String quote;
   QuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Text(quote),
                    ),
                  ),
      
                ),
              ),
    );
  }
}