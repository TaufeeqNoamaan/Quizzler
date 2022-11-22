import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeeper = [];
  List<String> questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7',
    'Question 8',
    'Question 9',
    'Question 10'
  ];
  List<bool> ans = [
    false,
    true,
    true,
    false,
    true,
    true,
    false,
    false,
    false,
    true
  ];

  int q = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    questions[q],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {
                    bool correctAns = true;
                    setState(() {
                      if (correctAns == ans[q]) {
                        scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                        
                      }
                      else {
                        scoreKeeper.add(const Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }
                      q = q + 1;
                    });
                  },
                  child: const Text('True'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {
                    bool correctAns = false;
                    setState(() {
                      if (correctAns == ans[q]) {
                        scoreKeeper.add(const Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      }
                      else {
                        scoreKeeper.add(const Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }
                      q = q + 1;
                    });
                  },
                  child: const Text('False'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent)),
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
