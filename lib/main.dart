import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: fp(),debugShowCheckedModeBanner: false,));
}

class fp extends StatefulWidget {
  const fp({Key? key}) : super(key: key);

  @override
  State<fp> createState() => _fpState();
}

class _fpState extends State<fp> {
  List s = ["1", "2", "3", "4", "5", "6", "7", "8", ""];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.brown,
        title: Center(
            child: Text(
              "PUZZLE",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 50,
            // width: 300,
            margin: EdgeInsets.only(bottom: 20),
            color: Colors.white10,
            child: Text(
              a,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (s[3] == "") {
                          s[3] = s[0];
                          s[0] = "";
                        } else if (s[1] == "") {
                          s[1] = s[0];
                          s[0] = "";
                        } else if (s[2] == "") {
                          s[2] = s[1];
                          s[1] = s[0];
                          s[0] = "";
                        } else if (s[6] == "") {
                          s[6] = s[3];
                          s[3] = s[0];
                          s[0] = "";
                        }
                      });

                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[0],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (s[4] == "") {
                          s[4] = s[1];
                          s[1] = "";
                        } else if (s[2] == "") {
                          s[2] = s[1];
                          s[1] = "";
                        } else if (s[0] == "") {
                          s[0] = s[1];
                          s[1] = "";
                        } else if (s[4] == "") {
                          s[4] = s[7];
                          s[7] = s[1];
                          s[1] = "";
                        } else if (s[7] == "") {
                          s[7] = s[4];
                          s[4] = s[1];
                          s[1] = "";
                        }
                      });

                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[1],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                child: InkWell(
                  onTap: () {
                    if(cnt==0)
                    {
                      setState(() {
                        if (s[1] == "") {
                          s[1] = s[2];
                          s[2] = "";
                        }
                        if (s[5] == "") {
                          s[5] = s[2];
                          s[2] = "";
                        } else if (s[5] == "") {
                          s[5] = s[8];
                          s[8] = s[2];
                          s[2] = "";
                        } else if (s[7] == "") {
                          s[8] = s[5];
                          s[5] = s[2];
                          s[2] = "";
                        }
                      });
                      win();
                    }},
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.rectangle),
                    margin: EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        s[2],
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (s[0] == "") {
                          s[0] = s[3];
                          s[3] = "";
                        }
                        if (s[4] == "") {
                          s[4] = s[3];
                          s[3] = "";
                        }
                        if (s[6] == "") {
                          s[6] = s[3];
                          s[3] = "";
                        } else if (s[4] == "") {
                          s[4] = s[5];
                          s[5] = s[3];
                          s[3] = "";
                        } else if (s[5] == "") {
                          s[5] = s[4];
                          s[4] = s[3];
                          s[3] = "";
                        }
                      });
                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[3],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (s[1] == "") {
                          s[1] = s[4];
                          s[4] = "";
                        }
                        if (s[3] == "") {
                          s[3] = s[4];
                          s[4] = "";
                        }
                        if (s[5] == "") {
                          s[5] = s[4];
                          s[4] = "";
                        }
                        if (s[7] == "") {
                          s[7] = s[4];
                          s[4] = "";
                        } else if (s[1] == "") {
                          s[1] = s[7];
                          s[7] = s[4];
                          s[4] = "";
                        } else if (s[7] == "") {
                          s[7] = s[1];
                          s[1] = s[4];
                          s[4] = "";
                        }
                      });
                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[4],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      if(cnt==0)
                      {
                        setState(() {
                          if (s[2] == "") {
                            s[2] = s[5];
                            s[5] = "";
                          }
                          if (s[4] == "") {
                            s[4] = s[5];
                            s[5] = "";
                          }
                          if (s[8] == "") {
                            s[8] = s[5];
                            s[5] = "";
                          } else if (s[3] == "") {
                            s[3] = s[4];
                            s[4] = s[5];
                            s[5] = "";
                          } else if (s[4] == "") {
                            s[4] = s[3];
                            s[3] = s[5];
                            s[5] = "";
                          }
                        });
                        win();
                      }},
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[5],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if(cnt==0)
                        {
                          if (s[3] == "") {
                            s[3] = s[6];
                            s[6] = "";
                          }
                          if (s[7] == "") {
                            s[7] = s[6];
                            s[6] = "";
                          } else if (s[3] == "") {
                            s[3] = s[0];
                            s[0] = s[6];
                            s[6] = "";
                          } else if (s[0] == "") {
                            s[0] = s[3];
                            s[3] = s[6];
                            s[6] = "";
                          } else if (s[7] == "") {
                            s[7] = s[8];
                            s[8] = s[6];
                            s[6] = "";
                          } else if (s[8] == "") {
                            s[8] = s[7];
                            s[7] = s[6];
                            s[6] = "";
                          }
                        }});
                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[6],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if(cnt==0)
                        {
                          if (s[8] == "") {
                            s[8] = s[7];
                            s[7] = "";
                          }
                          if (s[4] == "") {
                            s[4] = s[7];
                            s[7] = "";
                          }
                          if (s[6] == "") {
                            s[6] = s[7];
                            s[7] = "";
                          } else if (s[1] == "") {
                            s[1] = s[4];
                            s[4] = s[7];
                            s[7] = "";
                          } else if (s[4] == "") {
                            s[4] = s[1];
                            s[1] = s[7];
                            s[7] = "";
                          }
                        }});
                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[7],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (s[7] == "") {
                          s[7] = s[8];
                          s[8] = "";
                        } else if (s[5] == "") {
                          s[5] = s[8];
                          s[8] = "";
                        } else if (s[5] == "") {
                          s[5] = s[2];
                          s[2] = s[8];
                          s[8] = "";
                        } else if (s[2] == "") {
                          s[2] = s[5];
                          s[5] = s[8];
                          s[8] = "";
                        } else if (s[6] == "") {
                          s[6] = s[7];
                          s[7] = s[8];
                          s[8] = "";
                        } else if (s[7] == "") {
                          s[7] = s[6];
                          s[6] = s[8];
                          s[8] = "";
                        }
                      });
                      win();
                    },
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          s[8],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 80),
                primary: Colors.white,
              ),
              onPressed: () {
                s=List.filled(9, "");
                setState(() {
                  for(int i=0;i<9;i++)
                  {
                    while(true)
                    {
                      int v=Random().nextInt(9);
                      if(!s.contains("$v"))
                      {
                        s[i]="$v";
                        break;
                      }
                    }
                  }
                  for(int i=0;i<9;i++)
                  {
                    if(s[i]=="0")
                    {
                      s[i]="";
                    }
                  }
                });
              },
              child: Text(
               "reset",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
  // int cnt = 0;
//  List a= "";

  void win() {
    if (s[0] == "1" &&
        s[1] == "2" &&
        s[2] == "3" &&
        s[3] == "4" &&
        s[4] == "5" &&
        s[5] == "6" &&
        s[6] == "7" &&
        s[7] == "8" &&
        s[8] == "") {
      setState(() {
        a = "you win";
        cnt=1;
      });
    }
  }
  String a = "";
  int cnt=0;
}
