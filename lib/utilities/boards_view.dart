import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';

class BoardsView extends StatelessWidget {
  const BoardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              focusedBorder: const OutlineInputBorder()),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff32DACE),
                  onPrimary: Colors.black,
                  side: const BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text('Popular',
                  style: appstyle(13, Colors.black, FontWeight.normal))),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  side: const BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text('Saved',
                  style: appstyle(13, Colors.black, FontWeight.normal))),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  side: const BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text('My Boards',
                  style: appstyle(13, Colors.black, FontWeight.normal)))
        ],
      ),
      Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage("lib/images/user.jpeg"),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('사용자 1',
                    style: appstyle(15, Colors.black, FontWeight.bold,
                        height: 2.0)),
                Text('Scholarship',
                    style: appstyle(10, Colors.black, FontWeight.normal))
              ]),
            ]),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text('Follow',
                    style: appstyle(15, Colors.black, FontWeight.normal)))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            decoration: BoxDecoration(border: Border.all(width: 1.5)),
            child: const Image(image: AssetImage("lib/images/info.png"))),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.favorite), Text('10 mil')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.chat_bubble), Text('2.5 mil')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.bookmark), Text('Save')],
            )
          ],
        ),
      ),
      const Divider(
        color: Colors.grey,
        height: 40,
        thickness: 1,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage("lib/images/user.jpeg"),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('사용자 2',
                    style: appstyle(15, Colors.black, FontWeight.bold,
                        height: 2.0)),
                Text('Finance',
                    style: appstyle(10, Colors.black, FontWeight.normal))
              ]),
            ]),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text('Follow',
                    style: appstyle(15, Colors.black, FontWeight.normal)))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 100,
          height: 70,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: const Color(0xff32DACE),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
              '  이제 곧 스무 살이 되는 자립준비청소년인데, 무엇부터 계획해야할지 막막하네요.. 제 고민을 함께 나눌 멘토 분 구합니다!',
              style:
                  appstyle(14, Colors.black, FontWeight.normal, height: 1.2)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.favorite), Text('100k')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.chat_bubble), Text('40k')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.bookmark), Text('Save')],
            )
          ],
        ),
      ),
      const Divider(
        color: Colors.grey,
        height: 40,
        thickness: 1,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage("lib/images/user.jpeg"),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('사용자 3',
                    style: appstyle(15, Colors.black, FontWeight.bold,
                        height: 2.0)),
                Text('Finance',
                    style: appstyle(10, Colors.black, FontWeight.normal))
              ]),
            ]),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text('Follow',
                    style: appstyle(15, Colors.black, FontWeight.normal)))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            decoration: BoxDecoration(border: Border.all(width: 1.5)),
            child: const Image(image: AssetImage("lib/images/info2.jpg"))),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 100,
          height: 80,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: const Color(0xff32DACE),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
              '보건복지부가 오는 8월부터 자립수당이 월 5만원 인상되어, 만 18세 이후 퇴소한 자립준비청년은 매월 35만원의 자립수당을 받을 수 있다고 밝혔습니다.',
              style:
                  appstyle(14, Colors.black, FontWeight.normal, height: 1.2)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite, color: Color(0xff32DACE)),
                Text('100k')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.chat_bubble), Text('40k')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.bookmark, color: Color(0xff32DACE)),
                Text('Saved')
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
