import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'similar_state.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit() : super(SimilarInitial());
}
