import 'package:flutter/material.dart';
import 'package:vyapardost_flutter/base/widgets/custom_appbar.dart';
import 'package:vyapardost_flutter/base/widgets/custom_checkbox.dart';
import 'package:vyapardost_flutter/base/widgets/custom_text_field.dart';
import 'package:vyapardost_flutter/base/widgets/screen_padding.dart';

import '../../../base/utils/size_utils.dart';
import '../../../base/widgets/custom_button.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/text_themes_constants.dart';

class LocationSelectUI extends StatelessWidget {
  final bool locationSelected;
  LocationSelectUI({Key? key, this.locationSelected = false}) : super(key: key);

  final TextEditingController searchController = TextEditingController();
  List<CityDm> cityList = [];

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
        appBar: customAppbar('Which cities you provide service?'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchTextField(),
            size26H,
            leadsText(),
            if (locationSelected) detectLocationText(),
            size26H,
            cityListWidget(),
            size26H,
            buttonRow(),
          ],
        ));
  }

  Widget detectLocationText() {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_searching_outlined,
              color: primaryColor,
            ),
            size10W,
            Text(
              'Detect My Location',
              style: bodySmallSemiBold.copyWith(color: primaryColor),
            )
          ],
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }

  Widget cityListWidget() {
    cityList = getCityList();
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
          );
        },
        itemCount: cityList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Text(
                  cityList[index].city,
                  style: bodySmallRegular,
                ),
                if (cityList[index].state != null)
                  Text(
                    ' - -> ',
                    style: bodySmallRegular,
                  ),
                if (cityList[index].state != null)
                  Text(
                    cityList[index].state!,
                    style: bodySmallRegular,
                  ),
                const Spacer(),
                StatefulBuilder(
                  builder: (context, setState) {
                    return CustomCheckbox(
                        value: cityList[index].isSelected,
                        onChanged: (val) {
                          setState(() {
                            cityList[index].isSelected =
                                !cityList[index].isSelected;
                          });
                        });
                  },
                )
              ],
            ),
          );
        });
  }

  List<CityDm> getCityList() {
    return locationSelected
        ? [
            CityDm(city: 'Selected Locations', isSelected: true),
            CityDm(state: 'Gujarat', city: "Mandvi", isSelected: true),
            CityDm(state: 'Maharashtra', city: "Thane", isSelected: true),
          ]
        : [
            CityDm(city: 'All India'),
            CityDm(
              state: 'Maharashtra',
              city: "Maharashtra",
            ),
            CityDm(state: 'Maharashtra', city: "Mumbai", isSelected: true),
            CityDm(state: 'Maharashtra', city: "Thane", isSelected: true),
            CityDm(state: 'Maharashtra', city: "Navi Mumbai", isSelected: true),
            CityDm(state: 'Maharashtra', city: "Pune", isSelected: true),
            CityDm(state: 'Maharashtra', city: "Nagpur"),
            CityDm(state: 'State', city: "Delhi"),
            CityDm(state: 'Gujarat', city: "Ahmedabad"),
            CityDm(state: 'Tamil Nadu', city: "Chennai"),
            CityDm(state: 'Tamil Nadu', city: "Koimbatore"),
          ];
  }

  Widget leadsText() {
    return Text(
      'You get leads within 100 Km of selected locations.',
      style: bodySmallSemiBold.copyWith(color: secondaryColor),
    );
  }

  Widget searchTextField() {
    return CustomTextField(
      controller: searchController,
      hintText: 'Select Cities',
      iconButton: IconButton(
        icon: const Icon(Icons.location_on_sharp),
        color: black,
        onPressed: () {},
      ),
    );
  }

  Widget buttonRow() {
    return Row(
      children: const [
        CustomButton(
          text: 'CANCEL',
          outlineBtn: true,
        ),
        size16W,
        CustomButton(text: 'SAVE')
      ],
    );
  }
}

class CityDm {
  String? state;
  String city;
  bool isSelected;

  CityDm({this.state, required this.city, this.isSelected = false});
}
