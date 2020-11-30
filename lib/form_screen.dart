import 'package:flutter/material.dart';
import 'package:flutter_page_view/widgets/input_form.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: PageView(
              controller: pageController,
              onPageChanged: (selectedPage) {
                currentPage = selectedPage;
              },
              children: [
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InputForm(
                        'username',
                        'Enter Your username',
                        Icons.person,
                      ),
                      InputForm(
                        'Emain',
                        'Enter Your email',
                        Icons.email,
                      ),
                      InputForm(
                        'Pasword',
                        'Enter Your Password',
                        Icons.vpn_key,
                      ),
                      InputForm(
                        'Confirm Password',
                        'Enter Your Confirm Password',
                        Icons.vpn_key,
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            color: Colors.deepPurpleAccent,
                            minWidth: 100,
                            height: 40,
                            elevation: 9,
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              pageController.jumpToPage(1);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputForm(
                      'Facebook',
                      'Enter your Facebook',
                      FontAwesomeIcons.facebook,
                    ),
                    InputForm(
                      'Twiter',
                      'Enter your Twiter',
                      FontAwesomeIcons.twitter,
                    ),
                    InputForm(
                      'Instagram',
                      'Enter your Instagram',
                      FontAwesomeIcons.instagram,
                    ),
                    ButtonBar(
                      children: [
                        ButtonBar(
                          children: [
                            MaterialButton(
                              color: Colors.deepPurpleAccent,
                              minWidth: 100,
                              height: 40,
                              elevation: 9,
                              child: Text(
                                'Previous',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                pageController.jumpToPage(0);
                              },
                            )
                          ],
                        ),
                        ButtonBar(
                          children: [
                            MaterialButton(
                              color: Colors.deepPurpleAccent,
                              minWidth: 100,
                              height: 40,
                              elevation: 9,
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                // pageController.jumpToPage(1);
                              },
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
          Divider(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '1. Basic Info',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
                Text(
                  '2. Bio',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
