import 'package:flutter/material.dart';

class question extends StatefulWidget {
  const question({Key? key}) : super(key: key);

  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {
  int i = 0;
  List color = [
    Colors.blue,
    Colors.purpleAccent,
    Colors.orange,
    Colors.red,
    Colors.yellow,
    Colors.brown,
    Colors.indigo,
    Colors.green,
    Colors.teal,
    Colors.pink
  ];
  List que = [
    "1.The International Literacy Day is observed on_",
    "2.The language of Lakshadweep. a Union Territory of India, is",
    "3.In which group of places the Kumbha Mela is held every twelve years? ",
    "4.Bahubali festival is related to",
    "5.Which day is observed as the World Standards  Day?",
    "6.Which of the following was the theme of the World Red Cross and Red Crescent Day?",
    "7.September 27 is celebrated every year as",
    "8.Who is the author of 'Manas Ka-Hans'?",
    "9.The death anniversary of which of the following leaders is observed as Martyrs' Day?",
    "10.Who is the author of the epic 'Meghdoot'?",
  ];
  List a = [
    "A.Sep8",
    "A.Tamil",
    "A.Ujjain. Purl; Prayag. Haridwar",
    "A.Islam",
    "A.June 26",
    "A.'Dignity for all - focus on women'",
    "A.Teachers' Day",
    "A.Khushwant Singh",
    "A.Smt. Indira Gandhi",
    "A.Vishakadatta",
  ];
  List b = [
    "B.Nov 28",
    "B.Hindi",
    "B.Prayag. Haridwar, Ujjain,. Nasik",
    "B.Hinduism",
    "B.Oct 14",
    "B.Dignity for all - focus on Children'",
    "B.National Integration Day",
    "B.Prem Chand",
    "B.PI. Jawaharlal Nehru",
    "B.Valmiki",
  ];
  List c = [
    "C.May 2",
    "C.Malayalam",
    "C.Rameshwaram. Purl, Badrinath. Dwarika",
    "C.Buddhism",
    "C.Nov 15",
    "C.Focus on health for all",
    "C.World Tourism Day",
    "C.Jayashankar Prasad",
    "C.Mahatma Oandhi",
    "C.Banabhatta",
  ];
  List d = [
    "D.Sep 22",
    "D.Telugu",
    "D.Chittakoot, Ujjain, Prayag,'Haridwar",
    "D.Jainism",
    "D.Dec 2",
    "D.Nourishment for all-focus on children",
    "D.International Literacy Day",
    "D.Amrit Lal Nagar",
    "D.Lal Bahadur Shastri",
    "D.Kalidas",
  ];
  List userans = [];
  List correctans = [
    "A.Sep8",
    "C.Malayalam",
    "B.Prayag. Haridwar, Ujjain,. Nasik",
    "D.Jainism",
    "B.Oct 14",
    "B.Dignity for all - focus on Children'",
    "C.World Tourism Day",
    "D.Amrit Lal Nagar",
    "C.Mahatma Oandhi",
    "D.Kalidas"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color[i],
        centerTitle: true,
        title: Text(""),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 400,
              width: double.infinity,
              color: color[i],
              child: InkWell(
                child: Text(
                  "${que[i]}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    if (i < 9) {
                      i++;
                    }
                  });
                },
              ),
            ),
            h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "${a[i]}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (i <= 9) {
                        userans.add(a[i]);
                        if(userans[i] == correctans[i])
                          {
                            Navigator.pushNamed(context, 'W');
                          }
                        else
                          {
                            Navigator.pushNamed(context, 'L');
                            i=0;
                            i--;
                            userans.clear();
                          }
                      }
                        i++;
                      if(i==10){
                        i=0;
                        userans.clear();
                      }
                    });
                  },
                ),
               w(150),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "${b[i]}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (i <= 9) {
                        userans.add(b[i]);
                        if(userans[i]==correctans[i])
                        {
                          Navigator.pushNamed(context, 'W');
                        }
                        else
                        {
                          Navigator.pushNamed(context, 'L');
                          i=0;
                          i--;
                          userans.clear();
                        }
                        i++;
                      }
                      if(i==10){
                        i=0;
                        userans.clear();
                      }
                    });
                  },
                ),
              ],
            ),
           h(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                w(10),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "${c[i]}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (i <= 9) {
                        userans.add(c[i]);
                        if(userans[i]==correctans[i])
                        {
                          Navigator.pushNamed(context, 'W');
                        }
                        else
                        {
                          Navigator.pushNamed(context, 'L');
                          i=0;
                          i--;
                          userans.clear();
                        }
                        i++;
                      }
                      if(i==10){
                        i=0;
                        userans.clear();
                      }
                    });
                  },
                ),
               w(150),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "${d[i]}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (i <= 9) {
                        userans.add(d[i]);
                        if(userans[i]==correctans[i])
                        {
                          Navigator.pushNamed(context, 'W');
                        }
                        else
                        {
                          Navigator.pushNamed(context, 'L');
                          i=0;
                          i--;
                          userans.clear();
                        }
                        i++;
                      }
                      if(i==10){
                        i=0;
                        userans.clear();
                      }
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget h(double height)
  {
    return SizedBox(
      height: height,
    );
  }
  Widget w(double width)
  {
    return SizedBox(
      width: width,
    );
  }
}
