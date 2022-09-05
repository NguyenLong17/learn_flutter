import 'package:flutter/material.dart';
import 'package:notification_app/controller/notification.dart';

class NotificationMoMo extends StatefulWidget {
  const NotificationMoMo({Key? key}) : super(key: key);

  @override
  State<NotificationMoMo> createState() => _NotificationMoMoState();
}

class _NotificationMoMoState extends State<NotificationMoMo> {
  final notification1 = NotificationMomo(
    1,
    '3 giờ trước',
    'Ưu đãi',
    'Nạp thẻ',
    'Khuyến mãi 50% giá trị thẻ nạp trong ngày hôm nay 4/9 \u{1F30F} Túi Thần Tài sinh lời xuyên lễ! Nạp thêm tiền vào Túi ngay hôm nay để nhận về tiền lời bạn nhé!'

    'Dù là ngày thường hay ngày lễ, Túi Thần Tài vẫn luôn sinh lời không nghỉ phép để bạn hoàn toàn yên tâm nạp tiền và nhận lợi nhuận đều đặn mỗi ngày.'

    'Theo đó, tiền lời trong lễ 2/9 được tính cụ thể như sau: ',
    '\u{1F4F2}',
    'Chưa xem',
  );

  final notification2 = NotificationMomo(
    2,
    '10 giờ trước',
    'Ưu đãi',
    'Combo bỏng ngô',
    'Combo nước ngọt bỏng ngô + vé xem phim \u{23F1} khi thanh toán hóa đơn trên 300.000 vnd',
    '\u{1F37F}',
    'Chưa xem',
  );

  final notification3 = NotificationMomo(
    3,
    '22 giờ trước',
    'Ưu đãi',
    'Khuyến mãi',
    'Săn mãi giảm giá trên ứng dụng MoMo ngay \u{1F6CE} \u{1F6CE} \u{1F6CE} để nhận được nhiều ưu đãi lớn',
    '\u{26A1}',
    'Chưa xem',
  );
  final notification4 = NotificationMomo(
    4,
    'Chủ nhật, 04/9',
    'Ưu đãi',
    'Quà tặng',
    '\u{1F381} Bạn nhận được một phần quà khi trở thành hội viên Vàng. \u{1F381} \u{1F381}',
    '\u{1F381}',
    'Chưa xem',
  );

  final notification5 = NotificationMomo(
    5,
    'Thứ hai, 19/8',
    'Ưu đãi',
    'Vé du lịch',
    'Bangkok luôn có điều thú vị để làm suốt 24 giờ: đến các khu ẩm thực vào ban ngày, đi thuyền vào hoàng hôn, chơi bar đến khuya và ghé chợ đêm tới bình minh.',
    '\u{1F3D6}',
    'Chưa xem',
  );

  final notification6 = NotificationMomo(
    6,
    'Thứ tư, 14/8',
    'Giao dịch',
    'Thanh toán',
    'Thanh toán tiền điện thoại trả sau của Viettel',
    '\u{1F4F3}',
    'Chưa xem',
  );

  final notification7 = NotificationMomo(
    7,
    'Thứ ba, 13/8',
    'Giao dịch',
    'Hoàn tiền',
    'Bạn vừa được hoàn 500 xu sau khi sử dụng giao dịch của ví điện tử MoMo',
    '\u{1F4B2}',
    'Chưa xem',
  );

  final notification8 = NotificationMomo(
    8,
    'Thứ hai, 05/8',
    'Ưu đãi',
    'Mua sắm',
    'Trong ngày 5/8 nhập mãi giảm giá ABC58 để nhận được ưu đãi 20% khi mua quần áo \u{1F455} \u{1F45A}trên MoMo',
    '\u{1F457}',
    'Chưa xem',
  );

  final notification9 = NotificationMomo(
    8,
    'Thứ ba, 06/8',
    'Ưu đãi',
    'Học tập',
    'Làm thông báo trên ứng dụng MoMo',
    '\u{1F457}',
    'Chưa xem',
  );

  @override
  Widget build(BuildContext context) {
    List notifications = [];
    notifications.add(notification1);
    notifications.add(notification2);
    notifications.add(notification3);
    notifications.add(notification4);
    notifications.add(notification5);
    notifications.add(notification6);
    notifications.add(notification7);
    notifications.add(notification8);
    notifications.add(notification9);

    return Scaffold(
      appBar: buildAppBar(
        context: context,
        title: 'Thông báo (${notifications.length})',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_task_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: buildBody(notifications),
    );
  }

  Widget buildBody(List notifications) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      semanticChildCount: 8,
      children: [
        buildButtonAction(),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            buildItem(notificationMomo: notifications[0]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[1]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[2]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[3]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[4]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[5]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[6]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[7]),
            const SizedBox(
              height: 8,
            ),
            buildItem(notificationMomo: notifications[8]),
          ],
        ),
      ],
    );
  }

  Widget buildButtonAction() {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              child: const Text(
                'Giao dịch',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: const Text(
                  'Ưu đãi',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.center,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: const Text(
                  'Cập nhật',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: const Text(
                'Tất cả',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTitle(String icon, String title, String textDateTime) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                icon,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.brightness_1,
                color: Colors.red,
                size: 12.0,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                textDateTime,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildText({required String content}) {
    return Container(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        child: RichText(
          text: TextSpan(
              text: content,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              )),
        ),
      ),
    );
  }

  Widget buildItem({required NotificationMomo notificationMomo}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          )),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: buildTitle(notificationMomo.icon, notificationMomo.title,
                notificationMomo.date),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey.shade800,
          ),
          Expanded(
            flex: 3,
            child: buildText(
              content: notificationMomo.content,
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar({
    required BuildContext context,
    required String title,
    List<Widget>? actions,
  }) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.pinkAccent,
      actions: actions,
    );
  }
}
