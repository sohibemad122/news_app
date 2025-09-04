import 'package:flutter/material.dart';
import 'package:news_app/models/country.dart';
import 'package:news_app/widgets/selection_card_widget.dart';

class CountrySelectorWidget extends StatefulWidget {
  const CountrySelectorWidget({
    super.key,
    required this.initialCountry,
    required this.onChnaged,
  });

  final Country? initialCountry;
  final void Function(Country selectedCountry) onChnaged;

  @override
  State<CountrySelectorWidget> createState() => _CountrySelectorWidgetState();
}

class _CountrySelectorWidgetState extends State<CountrySelectorWidget> {

  late Country selectedCounty = widget.initialCountry??Country.countries[0];

  @override
  Widget build(BuildContext context) {
    
    return Wrap(
      spacing: 10,
      runSpacing: 8,
      children: [
        for(int i =0 ; i<Country.countries.length ; i++)
        SelectionCardWidget(
          title: Country.countries[i].name,
          isSelected: Country.countries[i].code == selectedCounty.code,
          onTap: (){
            selectedCounty = Country.countries[i];
            widget.onChnaged(Country.countries[i]);
            setState(() {
              
            });
          },
        ),
      ],
    );
  }
}