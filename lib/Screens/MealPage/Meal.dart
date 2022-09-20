import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  final String M_Image;
  final String M_Name;
  final String M_Price;
  final String M_Descriotion;

  MealPage({
    required this.M_Image,
    required this.M_Name,
    required this.M_Price,
    required this.M_Descriotion,
  });

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  String radioSelection = '';
  bool _Checked_Item1 = false;
  bool _Checked_Item2 = false;
  bool _Checked_Item3 = false;
  int _itemCount = 0;
  int price = 8000;
  int buttonSelected = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close_outlined,
              color: Colors.black87,
              size: 25,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.black87,
                  size: 25,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black87,
              size: 25,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 270,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(widget.M_Image))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.M_Name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    Text(
                      widget.M_Descriotion,
                      style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.M_Price,
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 10,
              ),
              Column(
                children: [
                  RadioListTile(
                      title: Text(
                        "حجم صغير",
                        textAlign: TextAlign.end,
                      ),
                      value: "a",
                      groupValue: radioSelection,
                      activeColor: Colors.teal,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (ch) {
                        setState(() {
                          radioSelection = "$ch";
                        });
                      }),
                  RadioListTile(
                      title: Text(
                        "حجم وسط",
                        textAlign: TextAlign.end,
                      ),
                      value: "b",
                      groupValue: radioSelection,
                      activeColor: Colors.teal,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (ch) {
                        setState(() {
                          radioSelection = "$ch";
                        });
                      }),
                  RadioListTile(
                      title: Text(
                        "حجم كبير",
                        textAlign: TextAlign.end,
                      ),
                      value: "c",
                      groupValue: radioSelection,
                      activeColor: Colors.teal,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (ch) {
                        setState(() {
                          radioSelection = "$ch";
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 10,
              ),
              CheckboxListTile(
                  title: const Text(
                    "سبايسي",
                    textAlign: TextAlign.end,
                  ),
                  value: _Checked_Item1,
                  activeColor: Colors.teal,
                  onChanged: (ch) {
                    setState(() {
                      _Checked_Item1 = ch!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    "جبن اكسترا",
                    textAlign: TextAlign.end,
                  ),
                  value: _Checked_Item2,
                  activeColor: Colors.teal,
                  onChanged: (ch) {
                    setState(() {
                      _Checked_Item2 = ch!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    "صلصة الباربكيو",
                    textAlign: TextAlign.end,
                  ),
                  value: _Checked_Item3,
                  activeColor: Colors.teal,
                  onChanged: (ch) {
                    setState(() {
                      _Checked_Item3 = ch!;
                    });
                  }),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "أي تعليمات خاصة؟",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 30,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        hintTextDirection: TextDirection.rtl,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1)),
                        hintText: "اكتبها هنا",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _itemCount != 0
                      ? IconButton(
                          icon: Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.teal,
                          ),
                          onPressed: () => setState(() => _itemCount--),
                        )
                      : Container(),
                  Text(
                    _itemCount.toString(),
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.teal,
                      ),
                      onPressed: () => setState(() => _itemCount++)),
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 1,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.12,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.teal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "IQD ${price * _itemCount}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "أضف إلى العربة",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      " Piece: ${_itemCount}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
