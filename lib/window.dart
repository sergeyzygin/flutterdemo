import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/bloc/color_cubit.dart';

class Window extends StatefulWidget {
  const Window({ Key? key }) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {

  @override
  Widget build(BuildContext context) {
    ColorCubit _colorCubit = BlocProvider.of<ColorCubit>(context);

    return Scaffold(
      body: BlocBuilder<ColorCubit, Color>(builder: (context, color) {
              return screen(_colorCubit.newColor, color);
        },)
      
    );
  }

  Widget screen(onTapCallBack, Color color){
    return SafeArea(child: 
              GestureDetector(
                onTap: onTapCallBack,
                child: mainContainer(color),
              ),
    );
  }

  Widget mainContainer(Color color){
    return 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Container(
                        color: color,
                        child: Center(child: Text('Hey there ', textAlign: TextAlign.center)),
                  ))
                ],
              ),
            )
          ],
        );
  }
}

