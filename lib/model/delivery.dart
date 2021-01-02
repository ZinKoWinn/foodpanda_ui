class Delivery {
  final String imageUrl;
  final String discount;
  final String delivery;
  final String time;
  final String name;
  final String type;
  final String far;

  Delivery(
      {this.imageUrl,
      this.discount,
      this.delivery = "",
      this.time,
      this.name,
      this.type,
      this.far});

  static List<Delivery> getPickUpItemList = [
    Delivery(
      imageUrl:
          "https://scontent.frgn5-2.fna.fbcdn.net/v/t1.0-9/128849072_262727148518844_4820621145426073519_o.jpg?_nc_cat=102&cb=846ca55b-311e05c7&ccb=2&_nc_sid=730e14&_nc_ohc=W9lnvHOH3sgAX_ItMzG&_nc_ht=scontent.frgn5-2.fna&oh=b4a49a026ebc037190353bd1066d9091&oe=60020A55",
      discount: "Discount 20%",
      delivery: "Free Delivery",
      time: "25mins",
      name: "တေးခက်",
      type: "\$\$\$. Asian, Chicken, Noodles",
      far: "220 m away",
    ),
    Delivery(
      imageUrl:
          "https://scontent.frgn5-2.fna.fbcdn.net/v/t1.0-9/129729344_262722908519268_1041077359573299013_o.jpg?_nc_cat=104&ccb=2&_nc_sid=730e14&_nc_ohc=Ga8aEEauuRIAX-vMnly&_nc_ht=scontent.frgn5-2.fna&oh=cca2756957ebee5d60b8b41f9724921b&oe=6004D93A",
      discount: "Discount 20%",
      delivery: "Free Delivery",
      time: "25mins",
      name: "Day Tha Sar",
      type: "\$\$\$. Asian, Chicken, Noodles",
      far: "220 m away",
    ),
    Delivery(
      imageUrl:
          "https://scontent.frgn5-2.fna.fbcdn.net/v/t1.0-9/128218964_262033145254911_3644160737479264159_o.png?_nc_cat=103&ccb=2&_nc_sid=730e14&_nc_ohc=Ml31oHTvdoAAX9yRZho&_nc_ht=scontent.frgn5-2.fna&oh=c0ac35393934d722fa8d73a36cb3b5c0&oe=6006F7FF",
      discount: "Discount 20%",
      delivery: "Free Delivery",
      time: "25mins",
      name: "Lazy Boy Myanmar",
      type: "\$\$\$. Asian, Chicken, Noodles",
      far: "220 m away",
    ),
    Delivery(
      imageUrl:
          "https://scontent.frgn5-2.fna.fbcdn.net/v/t1.0-9/128661824_262033081921584_9188708689100319784_o.png?_nc_cat=105&ccb=2&_nc_sid=730e14&_nc_ohc=FiRwO3dzmWwAX_0K3nu&_nc_ht=scontent.frgn5-2.fna&oh=b20280c5d9a20073a204885e9107500d&oe=6006AF69",
      discount: "Discount 20%",
      delivery: "Free Delivery",
      time: "25mins",
      name: "Shwe Nwar Lay",
      type: "\$\$\$. Asian, Chicken, Noodles",
      far: "220 m away",
    ),
    Delivery(
      imageUrl:
          "https://scontent.frgn5-2.fna.fbcdn.net/v/t1.0-9/128849072_262727148518844_4820621145426073519_o.jpg?_nc_cat=102&cb=846ca55b-311e05c7&ccb=2&_nc_sid=730e14&_nc_ohc=W9lnvHOH3sgAX_ItMzG&_nc_ht=scontent.frgn5-2.fna&oh=b4a49a026ebc037190353bd1066d9091&oe=60020A55",
      discount: "Discount 20%",
      delivery: "Free Delivery",
      time: "25mins",
      name: "Myanmar Tea",
      type: "\$\$\$. Asian, Chicken, Noodles",
      far: "220 m away",
    ),
  ];
}
