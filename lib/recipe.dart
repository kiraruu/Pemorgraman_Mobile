class Recipe {
  String label;
  String imgUrl;

  int servings;
  List<Ingredient>ingredients;

  Recipe(this.label, this.imgUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe('Rawon', 'assets/Rawon Daging.jpg', 5, [
      Ingredient(500, 'gram', 'Daging Sapi'),
      Ingredient(5, 'biji', 'Kluwek'),
      Ingredient(5, 'siung', 'Bawang Putih'),
      Ingredient(10, 'butir', 'Bawang Merah'),
      Ingredient(2, 'cm', 'Lengkuas'),
      Ingredient(3, 'lembar', 'Daun Salam'),
      Ingredient(1, 'liter', 'Air'),
    ]),


    Recipe('Rujak Cingur', 'assets/Bestik Lulur.jpg', 4, [
      Ingredient(300, 'gram', 'Cingur Sapi'),
      Ingredient(200, 'gram', 'Lontong'),
      Ingredient(100, 'gram', 'Tauge'),
      Ingredient(1, 'buah', 'Timun'),
      Ingredient(5, 'buah', 'Cabe Rawit'),
      Ingredient(50, 'gram', 'Kacang Tanah Goreng'),
      Ingredient(50, 'gram', 'Gula Merah'),
      Ingredient(1, 'liter', 'Air'),
    ]),


    Recipe('Lontong Balap', 'assets/Lontong Balap, Khas Surabaya, Jawa Timur.jpg', 3, [
      Ingredient(200, 'gram', 'Lontong'),
      Ingredient(100, 'gram', 'Tauge'),
      Ingredient(2, 'potong', 'Tahu Goreng'),
      Ingredient(5, 'buah', 'Cabe Rawit'),
      Ingredient(50, 'gram', 'Gula Merah'),
      Ingredient(1, 'liter', 'Air'),
      Ingredient(100, 'gram', 'Udang Rebus'),
    ]),


    Recipe('Soto Ayam Lamongan', 'assets/c886d1bc7e2aa59b90b77eb14686015f.jpg', 5, [
      Ingredient(1, 'ekor', 'Ayam (dipotong potong)'),
      Ingredient(2, 'liter', 'Air'),
      Ingredient(3, 'lembar', 'Daun Jeruk'),
      Ingredient(3, 'siung', 'Bawang Putih'),
      Ingredient(5, 'butir', 'Bawang Merah'),
      Ingredient(1, 'sendok', 'Teh'),
      Ingredient(2, 'cm', 'Jahe'),
    ]),

    Recipe('Wedang Ronde', 'assets/Resep Cara Membuat Wedang Ronde Merah Putih.jpg', 6, [
      Ingredient(200, 'gram', 'Ketan Putih'),
      Ingredient(100, 'gram', 'Kacang Tanah Goreng'),
      Ingredient(2, 'cm', 'Jahe'),
      Ingredient(200, 'gram', 'Gula Merah'),
      Ingredient(1, 'liter', 'Air'),
      Ingredient(2, 'lembar', 'Daun Pandan'),
      Ingredient(200, 'ml', 'Santan Kental')
    ]),

    Recipe('Tahu Tek', 'assets/ea225b8556744b4385b711d56f569443.jpg', 6, [
      Ingredient(300, 'gram', 'Tahu Putih'),
      Ingredient(100, 'gram', 'Tauge'),
      Ingredient(100, 'gram', 'Kacang Tanah Goreng'),
      Ingredient(3, 'buah', 'Cabe Merah'),
      Ingredient(1, 'butir', 'Telur'),
      Ingredient(1, 'sendok teh', 'garam'),
    ]),

    Recipe('Sate Madura', 'assets/420a44fd53d7ed286d327d6e2de82b49.jpg', 4, [
      Ingredient(500, 'gram', 'Daging Sapi'),
      Ingredient(10, 'butir', 'Bawang Merah'),
      Ingredient(5, 'siung', 'Bawang Merah'),
      Ingredient(1, 'Sendok Teh', 'Ketumbar Bubuk'),
      Ingredient(150, 'gram', 'Kacang Tanah Goreng'),
      Ingredient(10, 'buah', 'Cabe Merah'),
      Ingredient(50, 'gram', 'Gula Merah'),
      Ingredient(1, 'sendok teh', 'garam'),
      Ingredient(1, 'liter', 'Air'),
    ]),


    Recipe('Tahu Campur', 'assets/dcc9d2fc2ce727ac75f2f084a59bad26.jpg', 4, [
      Ingredient(300, 'gram', 'Tahu Putih'),
      Ingredient(100, 'gram', 'Tauge'),
      Ingredient(100, 'gram', 'Kol'),
      Ingredient(2, 'butir', 'Telur Rebus'),
      Ingredient(500, 'ml', 'Air'),
      Ingredient(2, 'sendok makan', 'Kecap Manis'),
      Ingredient(1, 'sendok teh', 'Gula'),
    ]),


    Recipe('Nasi Pecel', 'assets/20ffb81a7b8b5313acb910bddd1231be.jpg', 5, [
      Ingredient(200, 'gram', 'Kangkung'),
      Ingredient(100, 'gram', 'Kacang Tanah Goreng'),
      Ingredient(100, 'gram', 'Tauge'),
      Ingredient(200, 'gram', 'Lontong'),
      Ingredient(5, 'buah', 'Cabe Rawit'),
      Ingredient(1, 'sendok teh', 'Terasi'),
      Ingredient(50, 'gram', 'Garam'),
    ]),

    Recipe('Sate Klopo Surabaya', 'assets/0aab207557b3f916d27e9249eaefb014.jpg', 7, [
      Ingredient(500, 'gram', 'Daging Sapi'),
      Ingredient(1, 'butir', 'Kelapa(parut)'),
      Ingredient(5, 'siung', 'Bawang Putih'),
      Ingredient(8, 'butir', 'Bawang Merah'),
      Ingredient(1, 'sendok teh', 'Ketumbar Bubuk'),
      Ingredient(50, 'gram', 'garam'),
      Ingredient(6, 'buah', 'Tusuk Sate')
    ])
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}