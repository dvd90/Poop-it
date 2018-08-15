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
    owner: david,
    title: 'Tiger bun',
    description: "we have the solution to this pain that you have in the ass",
    location: 'Shalom Aleichem St 10, Tel Aviv-Yafo',
    picture: 'https://www.popsci.com/sites/popsci.com/files/styles/1000_1x_/public/images/2016/11/gen-press-cattelan-america_custom-99d77afb5b3134f7f7173a872ee9ecaa5283e997-s900-c85.jpg?itok=l_-tnfse&fc=50,50',
    price: 10
  },
  {
    owner: lorene,
    title: 'Comfy seat',
    description: "the seat that you never take your ass from. for real.",
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
    owner: david,
    title: 'Hole plug',
    description: 'using our toilet is some much more then any toilet. after doing
                  number one or two with us you will never want use someone else hole plug.',
    location: 'Allenby St 38, Tel Aviv-Yafo',
    remote_picture_url: 'https://www.wowamazing.com/wp-content/uploads/2015/09/toilette-fauteuil.jpg',
    price: 8
  },
  {
    owner: lorene,
    title: 'lalala',
    description: 'i am tired from cleaning your shit but a like happy people',
    location: 'Ben Yehuda 13, Tel Aviv-Yafo',
    remote_picture_url: 'http://merrilldavid.com/wp-content/uploads/2018/02/toilet-paper-holder-ideas-unusual-toilet-paper-holders-funny-toilet-paper-holders-toilet-paper-holder-for-small-bathroom-toilet-paper-holder-craft-ideas.jpg',
    price: 5
}]


Toilet.create!(toilets)
