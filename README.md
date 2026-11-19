# Kigali Bus Card – Dart OOP Assignment

## Student Information

- Name: Gentil IRAKOZE SHEMA
- Student ID: 26447

## My Personal Numbers

I used my student ID to calculate the values required for this assignment.

- D = 47
- L = 7
- Starting balance = 1470 RWF
- Bus fare = 247 RWF
- Student discount = 17%

## Part 1: BusCard Class

In this part, I created a `BusCard` class. It has an owner and a balance. I also added methods to top up the card and pay for bus transport.

**Why is there no setter for balance?**

I did not add a setter for the balance because I wanted to control how the balance changes. A user should not be able to put any amount directly into the balance. Instead, the `topUp()` method adds money, and the `pay()` method deducts the fare.

## Part 2: StudentCard Class

For this part, I created a `StudentCard` class that extends the `BusCard` class. This means it can use the properties and methods of the parent class. I also added a discount for students.

**What is the difference between `/` and `~/` in Dart?**

The `/` operator gives a decimal result, while `~/` gives a whole number by removing the decimal part.

For example:
- `10 / 3` gives `3.333333...`
- `10 ~/ 3` gives `3`

I used `~/` when calculating the student discount because the result needs to be a whole number.

## Part 3: Main Function

In this part, I tested the program using my own values. I tried changing the owner's name, adding money to the card, paying the bus fare and using the student card.

**Program output:**

```text
Error: name too short
Owner: Ama | Balance: 1470 RWF
Owner: Gentil IRAKOZE SHEMA | Balance: 1470 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 247 RWF
Paid 247 RWF
Owner: Gentil IRAKOZE SHEMA | Balance: 2976 RWF
Student discount: 41 RWF
Paid 206 RWF
Owner: Gentil IRAKOZE SHEMA | Balance: 1264 RWF
Student card: 17% off
```

## Part 4: Bug Hunt

In this part, I was given a program containing errors. I went through the code, identified the problems and corrected them.

| No. | Problem | How I fixed it |
|---|---|---|
| 1 | The fields were not initialized. | I gave them default values. |
| 2 | The child constructor did not call the parent constructor. | I added `super(brand, battery)`. |
| 3 | The `@override` annotation was incorrect. | I removed it because the parent class did not have a `restart()` method. |
| 4 | The battery setter was missing. | I added a setter that accepts values from 0 to 100. |
| 5 | The battery getter was called like a method. | I changed `p.battery()` to `p.battery`. |

**Line that was not a bug:**

`Phone p = new Phone('Tecno', 50);`

This line was already correct. In Dart, using `new` when creating an object is optional.

**Output after fixing the program:**

```text
100
```

## Part 5: Prediction and Real Output

Before running the program, I predicted that the output would be:

```text
1
5
```

My reason was that the setter does not accept negative values. Also, the `BigBag` class calls the `add()` method from the parent class twice every time it is used.

**Actual output:**

```text
1
5
```

**Was my prediction correct?**

Yes, my prediction was correct. The program produced the same output I expected.

## Conclusion

Through this assignment, I learned more about Dart and object-oriented programming. I practised creating classes and objects, using constructors, getters and setters, and working with inheritance and method overriding. I also learned how to identify and fix errors in Dart programs.