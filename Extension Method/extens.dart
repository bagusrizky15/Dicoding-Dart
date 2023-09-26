void main() {
  var unsortedNumb = [1, 3, 2, 9, 4, 5];
  unsortedNumb.sort();
  print(unsortedNumb);

  var sortedNumb = unsortedNumb.sortAsc();
  print(sortedNumb);
}



extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;

      for (int j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      int tmp = list[min];
      list[min] = list[i];
      list[i] = tmp;
    }

    return list;
  }
}
