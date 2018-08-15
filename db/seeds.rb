Toilet.destroy_all
Owner.destroy_all
Renter.destroy_all

renter = Renter.create!(
  email: '1234p@gmail.com',
  password: 'roman1'
  )


roman = Owner.create!(
  email: '12345@gmail.com',
  password: 'roman2'
  )

lorene = Owner.create!(
  email: '1234@gmail.com',
  password: 'lorene1'
  )

david = Owner.create!(
  email: '123@gmail.com',
  password: ' david3'
  )

toilets = [
  {
    owner: roman,
    title: 'Wooshy toshi',
    description: 'the toilet that will wash your buns.',
    location: 'Ben Yehuda St 38, Tel Aviv-Yafo',
    remote_picture_url: 'https://odditymall.com/includes/content/upload/solo-toilet-lift-2148.jpg',
    price: 15
  },
  {
    owner: roman,
    title: 'Le Wagon',
    description: 'the seat that you never take your ass from. for real.',
    location: 'HaYarkon 5, Tel Aviv-Yafo',
    remote_picture_url: 'http://oddstuffmagazine.com/wp-content/uploads/2013/02/funnytoilets7.jpg',
    price: 35
  },
  {
    owner: roman,
    title: 'Comfy seat',
    description: 'the seat that you never take your ass from. for real.',
    location: 'HaYarkon 85, Tel Aviv-Yafo',
    remote_picture_url: 'http://oddstuffmagazine.com/wp-content/uploads/2013/02/funnytoilets7.jpg',
    price: 35
  },
  {
    owner: roman,
    title: 'The massage lover',
    description: 'when everybody stop, we continue.',
    location: 'Ness Tsiyona 6-12, Tel Aviv-Yafo',
    remote_picture_url: 'https://www.dhresource.com/0x0s/f2-albu-g4-M00-A5-59-rBVaEVcsFFGAKIsjAAK_kBDSRTU355.jpg/waterproof-bathroom-toilet-sticker-door-glass.jpg',
    price: 56
  },
  {
    owner: roman,
    title: 'Hole plug',
    description: 'using our toilet is some much more then any toilet. after doing
                  number one or two with us you will never want use someone else hole plug.',
    location: 'Allenby St 38, Tel Aviv-Yafo',
    remote_picture_url: 'https://www.wowamazing.com/wp-content/uploads/2015/09/toilette-fauteuil.jpg',
    price: 8
  },
  {
    owner: roman,
    title: 'lalala',
    description: 'i am tired from cleaning your shit but a like happy people',
    location: 'Ben Yehuda 13, Tel Aviv-Yafo',
    remote_picture_url: 'http://merrilldavid.com/wp-content/uploads/2018/02/toilet-paper-holder-ideas-unusual-toilet-paper-holders-funny-toilet-paper-holders-toilet-paper-holder-for-small-bathroom-toilet-paper-holder-craft-ideas.jpg',
    price: 5
  },
    {
      owner: lorene,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 13, Tel Aviv-Yafo',
      remote_picture_url: 'https://img.diply.com/article-images/a/0803f04c-4662-4676-9f71-9686049c6095.jpg?imwidth=741',
      price: 5
  },
    {
      owner: lorene,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 3, Tel Aviv-Yafo',
      remote_picture_url: 'https://s3.amazonaws.com/askfoxy-media/wp-content/uploads/2017/08/08060120/1-41.jpg',
      price: 5
  },
    {
      owner: lorene,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 57, Tel Aviv-Yafo',
      remote_picture_url: 'https://www.sickchirpse.com/wp-content/uploads/2013/11/Most-Dangerous-Toilet-Ever-Featured-.jpg',
      price: 5
  },
    {
      owner: lorene,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 8, Tel Aviv-Yafo',
      remote_picture_url: 'https://www.star2.com/wp-content/uploads/2016/11/toilet-bathroom-pixabay-691341aa-770x470.jpg',
      price: 5
  },
    {
      owner: lorene,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 34, Tel Aviv-Yafo',
      remote_picture_url: 'http://merrilldavid.com/wp-content/uploads/2018/02/toilet-paper-holder-ideas-unusual-toilet-paper-holders-funny-toilet-paper-holders-toilet-paper-holder-for-small-bathroom-toilet-paper-holder-craft-ideas.jpg',
      price: 5
  },
    {
      owner: david,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 32, Tel Aviv-Yafo',
      remote_picture_url: 'https://farm9.staticflickr.com/8582/16705498862_f30a7641c0_b.jpg',
      price: 5
  },
    {
      owner: david,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 20, Tel Aviv-Yafo',
      remote_picture_url: 'https://thisdayinwaterhistory.files.wordpress.com/2012/12/1205-van-burens-toilet.jpg?w=625',
      price: 5
  },
    {
      owner: david,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 25, Tel Aviv-Yafo',
      remote_picture_url: 'http://merrilldavid.com/wp-content/uploads/2018/02/toilet-paper-holder-ideas-unusual-toilet-paper-holders-funny-toilet-paper-holders-toilet-paper-holder-for-small-bathroom-toilet-paper-holder-craft-ideas.jpg',
      price: 5
  },
    {
      owner: david,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 139, Tel Aviv-Yafo',
      remote_picture_url: 'https://bloximages.newyork1.vip.townnews.com/feastmagazine.com/content/tncms/assets/v3/editorial/d/6f/d6f8eaa8-2ca2-11e5-997b-676e4a61a609/55a930a6bd606.image.jpg',
      price: 5
  },
    {
      owner: david,
      title: 'lalala',
      description: 'i am tired from cleaning your shit but a like happy people',
      location: 'Ben Yehuda 4, Tel Aviv-Yafo',
      remote_picture_url: 'https://bestshopping.center/floors/1-10/Bohemian-glass-toilet-bowl.jpg',
      price: 5
  }
]

Toilet.create!(toilets)

