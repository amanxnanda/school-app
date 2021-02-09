import 'package:flutter/material.dart';
import 'package:school_app/constant/constant.dart';
import 'package:school_app/screens/common/my_custom_painter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: kPurpleColor,
      body: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, size.height),
            painter: MyCustomPainter(),
          ),
          Container(
            height: size.height * 0.5,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/path.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.asset('assets/images/iconpath.png'),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Spacer(),
                      Text('Phone Number'),
                      Row(
                        children: [
                          Text(
                            '+91',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.black),
                          ),
                          Expanded(
                            child: TextFormField(
                              showCursor: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: '9812345678',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .copyWith(color: Colors.grey),
                              ),
                            ),
                          ),
                        
                        ],
                      ),
                      Spacer(),
                      Text('Password'),
                      Text(
                        '********',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: Colors.grey),
                      ),
                      Spacer(),
                      FloatingActionButton.extended(
                        onPressed: () {},
                        elevation: 0.0,
                        focusElevation: 0.0,
                        hoverElevation: 0.0,
                        highlightElevation: 0.0,
                        disabledElevation: 0.0,
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        backgroundColor: kPink,
                        label: Text(
                          'Sign In',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Forgot Password',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: kPink,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
