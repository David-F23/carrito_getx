import 'package:carrito_getx/data/tarjetas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              width: size.width,
              height: size.height,
              child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              physics: BouncingScrollPhysics(),
              itemCount: tarjetas.length,
              itemBuilder: (context, index){
            
                final tarjeta = tarjetas[index];
            
                return CreditCardWidget(
                  cardNumber: tarjeta.cardNumber, 
                  expiryDate: tarjeta.expiracyDate, 
                  cardHolderName: tarjeta.cardHolderName,
                  cvvCode: tarjeta.cvv, 
                  isHolderNameVisible: true,
                  showBackView: false, 
                  onCreditCardWidgetChange: (CreditCardBrand){},
                );
              }
                      ),
            ),
          ],
        ),
      )
       
       //Column(
      //   children: [
      //     SizedBox(height: 100,),

      //     SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: const [
      //           Icon(FontAwesomeIcons.ccMastercard, size: 55,),
          
      //           SizedBox(width: 25,),
      //           Icon(FontAwesomeIcons.ccVisa, size: 55,),
          
      //           SizedBox(width: 25,),
      //           Icon(FontAwesomeIcons.ccAmex, size: 55,),
          
      //           SizedBox(width: 25,),
      //           Icon(FontAwesomeIcons.ccDinersClub, size: 55,),
          
      //           SizedBox(width: 25,),
      //           Icon(FontAwesomeIcons.googlePay, size: 55,),
          
      //           SizedBox(width: 25,),
      //           Icon(FontAwesomeIcons.applePay, size: 55,),
      //         ],
      //       ),
      //     ),

      //     SizedBox(height: 25,),
          
      //   ],
      // )
    );
  }
}