part of 'quote_bloc.dart';

@immutable
abstract class QuoteState {}

 class QuoteInitial extends QuoteState {
  
 }

 class QuoteStateLoading  extends QuoteState{

 }

 class QuoteStateLoaded extends QuoteState{
  final String quote;
  QuoteStateLoaded({required this.quote});
 }

 class QuoteStateError extends QuoteState{
  final String msg;
  QuoteStateError({required this.msg});
 }
