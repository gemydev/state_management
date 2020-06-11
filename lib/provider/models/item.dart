class Item{

   String title ;
   double price;
   int selectedCount;


   Item({this.title, this.price});

   List<Item> itemsList() {
   final List<Item> items = [
      Item(title: 'Laptop', price: 16585),
      Item(title: 'Mobile', price: 3498),
      Item(title: 'Mouse', price: 45),
      Item(title: 'Printer' , price: 2720),
      Item(title: 'PC' , price: 3000),
      Item(title: 'Camera' , price: 10070),
      Item(title: 'TV' , price: 11025),
      Item(title: 'Keyboard' , price: 120),
      Item(title: 'Bag' , price: 540),
      Item(title: 'Watch' , price: 3699),
      Item(title: 'PowerCore' , price: 425),
      Item(title: 'T-Shirt' , price: 70)
   ];
      return items;
   }


   int getSelectedCount() {
      return selectedCount;
   }
}