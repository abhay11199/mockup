import 'package:flutter/material.dart';
import 'package:mockup/common/common_container.dart';
import 'package:mockup/common/common_elevated.dart';
import 'package:mockup/common/common_list_tile.dart';
import 'package:mockup/constants/app_config.dart';

class MockUpPage extends StatefulWidget {
  const MockUpPage({super.key});

  @override
  State<MockUpPage> createState() => _MockUpPageState();
}

class _MockUpPageState extends State<MockUpPage> {
  @override
  Widget build(BuildContext context) {
    AppConfig appConfig = AppConfig(context);

    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CommonListTile(
                image: 'assets/images/store_cashback.png',
                title: 'Mongonolia Bakery',
                subtitle: '3% cashback - 250 WelcomeBonus'),
            SizedBox(
              height: appConfig.deviceHeight(1),
            ),
            Text(
              'Claim Deals',
              style: TextStyle(
                  fontSize: appConfig.textSizeScale(20),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: appConfig.deviceHeight(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonContainer(
                  image: 'assets/images/Pay_at_store.png',
                  title: 'Pay Using my',
                  subtitle: 'Balance 500',
                  buttonText: 'PayBill',
                  backgroundColor: Colors.blue.withOpacity(0.2),
                  onButtonPressed: () {
                    _openBottomSheet(context);
                  },
                ),
                CommonContainer(
                  image: 'assets/images/Buy_Coins.png',
                  title: 'Buy 500',
                  subtitle: 'for just 450',
                  buttonText: 'Get for 450',
                  backgroundColor: Colors.purple.withOpacity(0.2),
                  onButtonPressed: () {
                    _openBottomSheet(context);
                  },
                ),
              ],
            ),
            SizedBox(
              height: appConfig.deviceHeight(1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonContainer(
                  image: 'assets/images/Offers.png',
                  subtitle: '& get 50',
                  title: 'Shop above 899',
                  buttonText: 'Get',
                  backgroundColor: Colors.pink.withOpacity(0.2),
                  onButtonPressed: () {
                    _openBottomSheet(context);
                  },
                ),
                CommonContainer(
                  image: 'assets/images/store_cashback.png',
                  title: 'Purchase ',
                  subtitle: '& get 5% back',
                  buttonText: 'Get',
                  backgroundColor: Colors.blue.withOpacity(0.2),
                  onButtonPressed: () {
                    _openBottomSheet(context);
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

void _openBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      AppConfig appConfig = AppConfig(context);
      return Container(
        height: appConfig.deviceHeight(40),
        width: appConfig.deviceWidth(100),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Proof of Transaction',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: appConfig.textSizeScale(20))),
            SizedBox(height: appConfig.deviceHeight(1)),
            const Text(
              'Scan Reciept/share payment screenshot to earn',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: appConfig.deviceHeight(2)),
            Column(
              children: [
                CommonElevatedButton(
                    buttonText: 'Share Payment image',
                    textColor: Colors.blue,
                    borderColor: Colors.black,
                    backgroundColor: Colors.white,
                    image: 'assets/images/upi_Image.png',
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(
                  height: appConfig.deviceHeight(2),
                ),
                CommonElevatedButton(
                    buttonText: 'Scan Receipt',
                    textColor: Colors.white,
                    backgroundColor: Colors.blue,
                    image: '',
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(
                  height: appConfig.deviceHeight(2),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
