// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:food_delivery_app/components/my_button.dart';

// import 'delivery_progress_page.dart';

// class PaymentPage extends StatefulWidget {
//   const PaymentPage({super.key});

//   @override
//   State<PaymentPage> createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   String cardNumber = "";
//   String expiryDate = "";
//   String cardHolderName = "";
//   String cvvCode = "";
//   bool isCvvFocused = false;

//   //user want to pay
//   void userTappedPay() {
//     if (formKey.currentState!.validate()) {
//       //only show dialog if form is valied
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text("Confirm Payment."),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: [
//                 Text("Card Number: $cardNumber"),
//                 Text("Expiry Date: $expiryDate"),
//                 Text("Card Holder Name: $cardHolderName"),
//                 Text("Cvv: $cvvCode"),
//               ],
//             ),
//           ),
//           actions: [
//             //cansal button
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("Cansal"),
//             ),
//             //yes button
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DeliveryProgressPage(),
//                   ),
//                 );
//               },
//               child: const Text("Yes"),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surfaceBright,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("CheckOut"),
//       ),
//       body: Column(
//         children: [
//           //credit card
          
//           CreditCardWidget(
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             showBackView: isCvvFocused,
//             onCreditCardWidgetChange: (p0) {},
//           ),

//           //credit card form
//           CreditCardForm(
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             onCreditCardModelChange: (data) {
//               setState(() {
//                 cardNumber = data.cardNumber;
//                 expiryDate = data.expiryDate;
//                 cardHolderName = data.cardHolderName;
//                 cvvCode = data.cvvCode;
//               });
//             },
//             formKey: formKey,
//           ),
//           Spacer(),

//           MyButton(
//             onTap: userTappedPay,
//             text: "Pay Now",
//           ),

//           const SizedBox(
//             height: 25,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm Payment."),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("Cvv: $cvvCode"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("CheckOut"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Credit card widget
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),

            // Credit card form
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey,
              ),
            ),

            const SizedBox(height: 20),

            // Payment button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MyButton(
                onTap: userTappedPay,
                text: "Pay Now",
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
