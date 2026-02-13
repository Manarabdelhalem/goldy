import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constant/app_color.dart';
import 'package:goldy/core/constant/app_image.dart';
import 'package:goldy/core/constant/app_string.dart';
import 'package:goldy/features/home/gold/data/model/gold_model.dart';
import 'package:goldy/features/home/gold/data/repo/gold_repo.dart';
import 'package:goldy/features/home/gold/presentation/cubit/gold_cubit.dart';
import 'package:goldy/features/home/gold/presentation/cubit/gold_state.dart';
import 'package:goldy/features/home/gold/presentation/screens/widget/custom_text.dart';


class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
  
       return GoldCubit(GoldRepo())..fetchGoldPrice();
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: Text("Gold Tracker", 
          style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context,state) {

        if(state is GoldLoadingState){
              return Center(child: CircularProgressIndicator(color: AppColor.primaryColor,),);
            }
            
           
          else if(state is GoldErrorState){
              return Center(child: CusstomText(text: state.errorMessage, color: Colors.red,),);
            }
            else if (state is GoldSuccessState){
return  Center(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImage.gold, height: 200,width: 200,),
                  CusstomText(text: state.goldModel.price.toString(),),
                  CusstomText(text: "USD"),
                 
                ],
              ),
            );
            }
            return SizedBox();
            
            
          }
        )
     
      ),
    );
  }
}

