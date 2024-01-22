import 'package:flutter/material.dart';

///  1
///

class BasicWidgetPage extends StatelessWidget {
  const BasicWidgetPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            )
          ],
          leading: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.arrow_back_ios),
            ],
          ),
          leadingWidth: 40,
          centerTitle: true,
          title: const Text(
            'Call settings',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          backgroundColor: Colors.grey.withOpacity(.5),
          // bottom: const PreferredSize(
          //   preferredSize: Size.fromHeight(50),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Icon(Icons.access_alarms_rounded),
          //       Icon(Icons.access_alarms_rounded),
          //       Icon(Icons.access_alarms_rounded)
          //     ],
          //   ),
          // )
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Payment method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(.5))),
                    width: MediaQuery.of(context).size.width * .42,
                    height: 60,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.monetization_on_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(.5))),
                    width: MediaQuery.of(context).size.width * .42,
                    height: 60,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Credit',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Saved cards',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
