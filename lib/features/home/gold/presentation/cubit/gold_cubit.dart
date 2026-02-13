import 'package:bloc/bloc.dart';
import 'package:goldy/features/home/gold/data/repo/gold_repo.dart';
import 'package:goldy/features/home/gold/presentation/cubit/gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;
 GoldCubit(this.goldRepo): super(GoldInitialState());

Future <void> fetchGoldPrice( ) async{
  emit (GoldLoadingState());
  final res =await goldRepo.getGoldPrice();
  res.fold((error){
    emit(GoldErrorState(errorMessage: error));
  }, (goldModel){
    emit(GoldSuccessState(goldModel: goldModel));
  });
}
}