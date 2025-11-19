class MovieModel {
  final String id;
  final String title;
  final String posterUrl;
  final String genre;
  final String synopsis;
  final double rating;
  final String year;
  final String duration;

  MovieModel({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.genre,
    required this.synopsis,
    required this.rating,
    required this.year,
    required this.duration,
  });
}

final List<MovieModel> dummyMovies = [
  MovieModel(
    id: 'm01',
    title: 'Trolls',
    posterUrl: 'assets/images/poster1.jpg',
    genre: 'Animation',
    synopsis:
        'Petualangan musik penuh warna dari dunia Trolls. Film ini mengikuti Poppy dan Branch yang berjuang menjaga harmoni ketika dunia Troll lain muncul dengan budaya berbeda.',
    rating: 8.9,
    year: "2023",
    duration: "1h 42m",
  ),
  MovieModel(
    id: 'm02',
    title: 'Beauty and the Beast',
    posterUrl: 'assets/images/poster2.jpg',
    genre: 'Fantasy',
    synopsis:
        'Remake live-action dari kisah klasik. Seorang gadis pemberani menghadapi kutukan misterius untuk menyelamatkan ayahnya dan menemukan cinta sejati.',
    rating: 9.2,
    year: "2020",
    duration: "2h 19m",
  ),
  MovieModel(
    id: 'm03',
    title: 'MEGAN',
    posterUrl: 'assets/images/poster3.jpg',
    genre: 'Horror',
    synopsis:
        'Sebuah boneka AI dengan kecerdasan tinggi diciptakan untuk menjaga seorang anak. Namun, programnya berkembang menjadi sesuatu yang berbahaya dan mematikan.',
    rating: 7.8,
    year: "2022",
    duration: "1h 55m",
  ),
  MovieModel(
    id: 'm04',
    title: 'School for Good and Evil',
    posterUrl: 'assets/images/poster4.jpg',
    genre: 'Fantasy',
    synopsis:
        'Dua sahabat tak terpisahkan memasuki sekolah magis untuk melatih pahlawan dan penjahat. Persahabatan mereka diuji ketika takdir memilihkan jalan yang berbeda.',
    rating: 8.6,
    year: "2021",
    duration: "2h 05m",
  ),
  MovieModel(
    id: 'm05',
    title: '1 Kakak 7 Ponakan',
    posterUrl: 'assets/images/poster5.jpg',
    genre: 'Drama',
    synopsis:
        'Drama keluarga yang emosional tentang pengorbanan, cinta, dan perjuangan mempertahankan kebersamaan. Kisah hangat yang menyentuh hati.',
    rating: 9.5,
    year: "2024",
    duration: "1h 30m",
  ),
  MovieModel(
    id: 'm06',
    title: 'Annabelle Comes Home',
    posterUrl: 'assets/images/poster6.jpg',
    genre: 'Horror',
    synopsis:
        'Ketika Annabelle dibawa ke rumah Ed dan Lorraine Warren, kekuatan jahat mulai membangunkan roh-roh yang terperangkap di museum okultis mereka.',
    rating: 7.5,
    year: "2019",
    duration: "1h 46m",
  ),
  MovieModel(
    id: 'm07',
    title: 'Harry Potter',
    posterUrl: 'assets/images/poster7.jpg',
    genre: 'Adventure',
    synopsis:
        'Cerita klasik seorang anak penyihir yang memasuki dunia sihir penuh misteri, bahaya, dan persahabatan sejati di Hogwarts.',
    rating: 8.0,
    year: "2011",
    duration: "2h 10m",
  ),
  MovieModel(
    id: 'm08',
    title: 'My Demon (KDrama)',
    posterUrl: 'assets/images/poster8.jpg',
    genre: 'Romance',
    synopsis:
        'Kisah cinta antara pewaris kaya dan iblis tampan yang kehilangan kekuatannya. Kisah romantis penuh drama dan twist emosional.',
    rating: 8.7,
    year: "2023",
    duration: "1h 08m per episode",
  ),
   MovieModel(
    id: 'm09',
    title: "Death Note",
    posterUrl: "assets/images/poster9.jpg",
    rating: 8.7,
    year: "2006",
    genre: "Mystery, Thriller",
    synopsis: "Seorang siswa menemukan buku supernatural yang dapat membunuh siapa pun hanya dengan menuliskan namanya.",
    duration: "2h 10m",
  ),

  MovieModel(
    id: 'm10',
    title: "Jason Statham",
    posterUrl: "assets/images/poster10.jpg",
    rating: 7.3,
    year: "2021",
    genre: "Action",
    synopsis: "Mantan agen elit kembali beraksi menghadapi organisasi kriminal berbahaya.",
    duration: "2h 00m",
  ),

  MovieModel(
    id: 'm11',
    title: "Ngeri-Ngeri Sedap",
    posterUrl: "assets/images/poster11.jpg",
    rating: 8.4,
    year: "2022",
    genre: "Family, Comedy",
    synopsis: "Keluarga Batak mencoba menyatukan kembali anak-anaknya dengan trik gila.",
    duration: "1h 54m",
  ),

  MovieModel(
    id: 'm12',
    title: "Yowis Ben",
    posterUrl: "assets/images/poster12.jpg",
    rating: 8.0,
    year: "2018",
    genre: "Comedy, Drama",
    synopsis: "Perjuangan remaja membentuk band demi cinta dan persahabatan.",
    duration: "1h 50m",
  ),

  MovieModel(
    id: 'm13',
    title: "A Good Man",
    posterUrl: "assets/images/poster13.jpg",
    rating: 8.9,
    year: "2024",
    genre: "Romance, Drama",
    synopsis: "Hubungan penuh harapan di tengah dunia kelam penuh bahaya.",
    duration: "2h 05m",
  ),

  MovieModel(
    id: 'm14',
    title: "A Good Day to be a Dog",
    posterUrl: "assets/images/poster14.jpg",
    rating: 8.2,
    year: "2023",
    genre: "Romance, Fantasy",
    synopsis: "Guru yang berubah menjadi anjing harus mematahkan kutukannya.",
    duration: "1h 15m per episode",
  ),

  MovieModel(
    id: 'm15',
    title: "Coco",
    posterUrl: "assets/images/poster15.jpg",
    rating: 9.1,
    year: "2017",
    genre: "Animation, Family",
    synopsis: "Petualangan musik Miguel di Dunia Arwah.",
    duration: "1h 45m",
  ),

  MovieModel(
    id: 'm16',
    title: "The Conjuring",
    posterUrl: "assets/images/poster16.jpg",
    rating: 9.0,
    year: "2013",
    genre: "Horror, Mystery",
    synopsis: "Ed dan Lorraine Warren menghadapi kekuatan supranatural berbahaya.",
    duration: "1h 52m",
  ),

  MovieModel(
    id: 'm17',
    title: "Despicable Me",
    posterUrl: "assets/images/poster17.jpg",
    rating: 8.6,
    year: "2010",
    genre: "Animation, Comedy",
    synopsis: "Gru berubah setelah tiga gadis kecil masuk ke hidupnya.",
    duration: "1h 35m",
  ),

  MovieModel(
    id: 'm18',
    title: "Fall",
    posterUrl: "assets/images/poster18.jpg",
    rating: 8.0,
    year: "2022",
    genre: "Thriller, Survival",
    synopsis: "Dua sahabat terjebak di puncak menara 600 meter.",
    duration: "1h 47m",
  ),

  MovieModel(
    id: 'm19',
    title: "The Ledge",
    posterUrl: "assets/images/poster19.jpg",
    rating: 7.5,
    year: "2022",
    genre: "Thriller",
    synopsis: "Wanita terjebak di tebing setelah menyaksikan kejahatan.",
    duration: "1h 26m",
  ),

  MovieModel(
    id: 'm20',
    title: "A Quiet Place Part II",
    posterUrl: "assets/images/poster20.jpg",
    rating: 8.8,
    year: "2020",
    genre: "Thriller, Horror",
    synopsis: "Keluarga Abbott menghadapi ancaman baru yang lebih berbahaya.",
    duration: "1h 37m",
  ),
];
