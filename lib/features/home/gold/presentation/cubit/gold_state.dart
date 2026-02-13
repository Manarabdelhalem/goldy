import 'package:goldy/features/home/gold/data/model/gold_model.dart';

abstract class GoldState {




}

class GoldInitialState extends GoldState{
 
}
class GoldLoadingState extends GoldState{
 
}
class GoldSuccessState extends GoldState{
  final GoldModel goldModel;
  GoldSuccessState({required this.goldModel});
}
class GoldErrorState extends GoldState{
  final String errorMessage;
  GoldErrorState({required this.errorMessage});
}