import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constant.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/silver/data/model/silver_model.dart';

class SilverRepo {

  Future<Either<String, SilverModel>>getSilverPrice() async{
    try {
final res = await DioHelper.getData(endPoint: ApiConstant.silverEndPoint);
return right(SilverModel.fromMap(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}