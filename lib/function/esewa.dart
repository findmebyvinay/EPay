import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:flutter/material.dart';
import 'package:pay/constant/esewa.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';

class esewa{
  pay(){
 try{
    EsewaFlutterSdk.initPayment(esewaConfig:EsewaConfig(
          environment: Environment.test,
          clientId:'JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R',
          secretId: 'BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==',
        ), 
    esewaPayment:EsewaPayment( productId: "1d71jd81",
          productName: "Product One",
          productPrice: "20",
           callbackUrl: 'https://jsonplaceholder.typicode.com/posts',
     ), 
    onPaymentSuccess:(EsewaPaymentSuccessResult result){
      debugPrint('success');
      verify(result);
    },
     onPaymentFailure: (){
     debugPrint("Failed");
     }, 
     onPaymentCancellation: (){
     debugPrint('success');
     });
    }
    catch(e){
    debugPrint('failed to process');
    }
  }
 verify(EsewaPaymentSuccessResult result){

 }
   
}