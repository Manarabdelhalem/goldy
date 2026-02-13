import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constant/app_color.dart';
import 'package:goldy/core/constant/app_image.dart';

import 'package:goldy/features/home/gold/presentation/screens/widget/custom_text.dart';
import 'package:goldy/features/silver/data/repo/silver_repo.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_state.dart';


class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
  
       return SilverCubit(SilverRepo())..fetchSilverPrice();
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: Text("Silver Tracker", 
          style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context,state) {

        if(state is SilverLoadingState){
              return Center(child: CircularProgressIndicator(color: AppColor.primaryColor,),);
            }
            
           
          else if(state is SilverErrorState){
              return Center(child: CusstomText(text: state.errorMessage, color: Colors.red,),);
            }
            else if (state is SilverSuccessState){
return  Center(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImage.silver, height: 200,width: 200,),
                  CusstomText(text: state.silverModel.price.toString(),),
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

