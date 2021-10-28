class AppState{
  List<Item>items;
  AppState({
    this.items=const<Item>[],
});

}

class Item{
  String title;
  Item(this.title);
}