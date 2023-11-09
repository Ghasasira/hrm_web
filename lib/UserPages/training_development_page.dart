import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class TrainingDevelopmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: Column(
                        children: [
                          Text("Didn't find what you looking for"),
                          Text(
                              "hjadfyrghasc awhjg wdbh e oukc bafmvzc ,dvjawefdgnb vncsawdjhxvdjwk,hdk vbndshjbdsjhf"),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Send suggestions"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Didn't find what you looking for"),
                            Text(
                                "hjadfyrghasc awhjg wdbh e oukc bafmvzc ,dvjawefdgnb vncsawdjhxvdjwk,hdk vbndshjbdsjhf"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Send suggestions"),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Recently Visited",
                      ),
                      RecntlyVisitedTrainingTabs()
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RecntlyVisitedTrainingTabs extends StatelessWidget {
  const RecntlyVisitedTrainingTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        //height: 50.0,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30.0,
          ),
          color: Colors.green,
        ),
        //border: Border.all(color: Colors.green)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "course name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColor.white),
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                )),

            //),
          ],
        ),
      ),
    );
  }
}
