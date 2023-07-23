class Bus {
  final int id;
  final String name;
  final String route;
  final double rating;
  final String environment;
  final String journeyStart;
  final double price;
  final String image;
  final String info;

  const Bus(
      {this.id,
      this.name,
      this.route,
      this.rating,
      this.environment,
      this.journeyStart,
      this.price,
      this.image,
      this.info});
}

class BusList {
  static List<Bus> list() {
    const data = <Bus>[
      Bus(
          id: 0,
          name: 'Metro',
          route: 'Samsun -> istanbul',
          rating: 5.0,
          environment: 'AC',
          journeyStart: '19 June, 2023',
          price: 200,
          image: 'assets/images/bus/1.png',
          info:
              "Otobüslerimiz, modern, konforlu ve güvenli bir seyahat deneyimi sunar. Tüm koltuklarımız geniş ve rahattır, USB şarj noktaları ve ücretsiz Wi-Fi ile donatılmıştır. Ayrıca, güler yüzlü personelimiz yolculuğunuz boyunca size yardımcı olmaktan mutluluk duyacaktır. Bizi tercih ederek, seyahat etmeyi kolay ve keyifli bir deneyime dönüştürürsünüz."),
      Bus(
          id: 1,
          name: 'KamilKoc',
          route: 'Samsun -> Ankara',
          rating: 5.0,
          environment: 'AC',
          journeyStart: '19 June, 2023',
          price: 150,
          image: 'assets/images/bus/2.png',
          info:
              "Otobüslerimiz, modern, konforlu ve güvenli bir seyahat deneyimi sunar. Tüm koltuklarımız geniş ve rahattır, USB şarj noktaları ve ücretsiz Wi-Fi ile donatılmıştır. Ayrıca, güler yüzlü personelimiz yolculuğunuz boyunca size yardımcı olmaktan mutluluk duyacaktır. Bizi tercih ederek, seyahat etmeyi kolay ve keyifli bir deneyime dönüştürürsünüz."),
      Bus(
          id: 2,
          name: 'Golden',
          route: 'Samsun -> Trabzon',
          rating: 5.0,
          environment: 'AC',
          journeyStart: '19 June, 2023',
          price: 100,
          image: 'assets/images/bus/3.png',
          info:
              "Otobüslerimiz, modern, konforlu ve güvenli bir seyahat deneyimi sunar. Tüm koltuklarımız geniş ve rahattır, USB şarj noktaları ve ücretsiz Wi-Fi ile donatılmıştır. Ayrıca, güler yüzlü personelimiz yolculuğunuz boyunca size yardımcı olmaktan mutluluk duyacaktır. Bizi tercih ederek, seyahat etmeyi kolay ve keyifli bir deneyime dönüştürürsünüz."),
      Bus(
          id: 3,
          name: 'AliOsman',
          route: 'istanbul -> Samsun',
          rating: 5.0,
          environment: 'Non-AC',
          journeyStart: '19 June, 2023',
          price: 170,
          image: 'assets/images/bus/4.png',
          info:
              "Otobüslerimiz, modern, konforlu ve güvenli bir seyahat deneyimi sunar. Tüm koltuklarımız geniş ve rahattır, USB şarj noktaları ve ücretsiz Wi-Fi ile donatılmıştır. Ayrıca, güler yüzlü personelimiz yolculuğunuz boyunca size yardımcı olmaktan mutluluk duyacaktır. Bizi tercih ederek, seyahat etmeyi kolay ve keyifli bir deneyime dönüştürürsünüz."),
    ];
    return data;
  }
}
