import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks')
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            divisions: 10,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value;
              setState(() {});
            } : null,
          ),

          // Checkbox(
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {  _sliderEnabled = value ?? true; })
          ),

          // Switch(
          //   value: _sliderEnabled, 
          //   onChanged:  (value) => setState(() {  _sliderEnabled = value; })
          // ),

          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged:  (value) => setState(() {  _sliderEnabled = value; })
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://i.pinimg.com/564x/d8/c6/ad/d8c6ad64fb07e422377382aac06d2382.jpg'), 
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          
          
        ],
      )
    );
  }
}