import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constant.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/home/gold/data/model/gold_model.dart';

class GoldRepo {

  Future<Either<String, GoldModel>>getGoldPrice() async{
    try {
final res = await DioHelper.getData(endPoint: ApiConstant.goldEndPoint);
return right(GoldModel.fromMap(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}