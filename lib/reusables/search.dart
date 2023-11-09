import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class SearchWid extends StatelessWidget {
  const SearchWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: AppColor.black),
          ),
          width: MediaQuery.of(context).size.width * 0.3,
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              style: TextStyle(color: AppColor.black),
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.blueGrey,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
