import 'package:bloc/bloc.dart';
import 'package:goldy/features/home/gold/data/repo/gold_repo.dart';
import 'package:goldy/features/home/gold/presentation/cubit/gold_state.dart';
import 'package:goldy/features/silver/data/repo/silver_repo.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;
 SilverCubit(this.silverRepo): super(SilverInitialState());

Future <void> fetchSilverPrice( ) async{
  emit (SilverLoadingState());
  final res =await silverRepo.getSilverPrice();
  res.fold((error){
    emit(SilverErrorState(errorMessage: error));
  }, (silverModel){
    emit(SilverSuccessState(silverModel: silverModel));
  });
}
}