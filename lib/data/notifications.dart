class Notifications {
  final int id;
  final String title;
  final String subTitle;
  final String time;

  const Notifications({this.id, this.title, this.subTitle, this.time});
}

class NotificationList {
  static List<Notifications> list() {
    const data = <Notifications>[
      Notifications(
        id: 1,
        title: 'Biletlerde %20 İndirim',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed',
        time: '1:45 PM',
      ),
      Notifications(
        id: 2,
        title: 'Max %10 İndirim',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed',
        time: '10:20 AM',
      ),
      Notifications(
        id: 3,
        title: 'Pazar Fırsatı',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed',
        time: '03:45 PM',
      ),
      Notifications(
        id: 4,
        title: 'Yıldızlı Pazar Fırsatı',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed',
        time: '07:20 AM',
      ),
      Notifications(
        id: 5,
        title: 'En Büyük Fırsat',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed',
        time: '11:45 AM',
      ),
      Notifications(
        id: 6,
        title: 'Kara Cuma',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit sed',
        time: '10:20 PM',
      ),
    ];
    return data;
  }
}
