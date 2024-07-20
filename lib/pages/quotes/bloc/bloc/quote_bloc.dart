import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      // TODO: implement event handler

      emit(QuoteStateLoading());

     await Future.delayed(Duration(seconds: 8),(){
        emit(QuoteStateLoaded(quote: 'Only Do What Your Heart Tells You!.'));
        // emit(QuoteStateError(msg: 'Something went wrong :('));
      });
    });

    //emit the error



  }
}
