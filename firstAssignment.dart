void main() {
  List<int> numbers = [10, 2, 3, 4, 80];
  List<List<List<int>>> data = [
    [
      [1, 2],
      [3, 4],
      [5, 6]
    ],
    [
      [7, 8],
      [9, 10],
      [11, 12]
    ],
  ];
  getMaxNumber(numbers);
  printArray(data);
}

//Get the maximum number of an array using for loop
void getMaxNumber(List<int> numbers) {
  if (numbers.length < 2) {
    print("The length of the array provided must be above 1");
    return;
  }
  int maxNumber = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > maxNumber) {
      maxNumber = numbers[i];
    }
  }

  print("Max Number is: $maxNumber");
}

//print out nested array value
void printArray(List<List<List<int>>> data) {
  if (data.length < 2) {
    print("The length of the array provided must be above zero");
    return;
  }

  data.forEach((item1) {
    item1.forEach((item2) {
      item2.forEach((element) {
        print(element);
      });
    });
  });
}
