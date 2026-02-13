import 'package:goldy/features/home/gold/data/model/gold_model.dart';
import 'package:goldy/features/silver/data/model/silver_model.dart';

abstract class SilverState {




}

class SilverInitialState extends SilverState{
 
}
class SilverLoadingState extends SilverState{
 
}
class SilverSuccessState extends SilverState{
  final SilverModel silverModel;
  SilverSuccessState({required this.silverModel});
}
class SilverErrorState extends SilverState{
  final String errorMessage;
  SilverErrorState({required this.errorMessage});
}