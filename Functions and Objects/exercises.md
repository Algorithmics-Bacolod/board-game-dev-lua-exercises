# Exercises about the following topics about functions and objects

- Arguments
- Return values
- Side Effects
- Multiple return values
- Multiple return statements
- Variable number of arguments
- Converting a redundant program to a shorter one using functions
- Predefined and library functions
- Attributes in OOP
- Methods in OOP
- The `self` parameter in OOP
- The `:` syntax for defining  and calling methods in OOP

## How to answer Exercises

1. Create a new file for each exercise named `exercise1.lua`, `exercise2.lua`, etc.
2. Write your code in the corresponding file.
3. Run the tests using the `Testing` tab in the sidebar of VS Code.

## Exercise 1

1. Create a function named `print_hello`. This function will have:
   1. 0 arguments
   2. 0 return values
   3. 1 side effect
   4. Make the function print "hello world". This is the function's side effect.
2. Create a function named `print_argument`. This function will have:
   1. 1 argument
   2. 0 return values
   3. 1 side effect
   4. Make the function print the argument it receives. This is the function's side effect.
3. Create a function named `return_hello`. This function will have:
   1. 0 arguments
   2. 1 return value
   3. 0 side effects
   4. Make the function return the string "hello mars".
   5. Create a variable named `I_have_hello` to store the return value of `return_hello` and print it out.
4. Create a function named `add_numbers`. This function will have:
   1. 2 arguments
   2. 1 return value
   3. 0 side effects
   4. Make the function return the sum of the two arguments it receives.
   5. Create a variable named `Sum` to store the return value of `add_numbers` and print it out.
5. Create a function named `sum_and_product`. This function will have:
   1. 2 arguments
   2. 2 return values
   3. 0 side effects
   4. Make the function return the sum and product of the two arguments it receives.
   5. Create two variables, `NewSum` and `Product`, to store the return values of `sum_and_product` and print them out.
6. Create a function named `check_number`. This function will have:
   1. 1 argument
   2. 1 return value
   3. 0 side effects
   4. 3 return statements
   5. Make the function return "positive" if the argument is greater than 0, "negative" if the argument is less than 0, and "zero" if the argument is equal to 0.
   6. Use a variable to store the return value of `check_number` and print it out.
   7. Test the function with different numbers.
7. Create a function named `sum_all`. This function will have:
   1. A variable number of arguments
   2. 1 return value
   3. 0 side effects
   4. Make the function return the sum of all the arguments it receives.
   5. Use a variable to store the return value of `sum_all` and print it out.
   6. Test the function with different numbers of arguments.

## Exercise 2

You are given the following redundant program that doesn't use functions in the context of a board game:

```lua
print("Player 1's turn")
print("Player 1 rolls the dice")
print("Player 1 moves")
print("Player 2's turn")
print("Player 2 rolls the dice")
print("Player 2 moves")
print("Player 3's turn")
print("Player 3 rolls the dice")
print("Player 3 moves")
```

1. Convert the above program to a shorter one using functions. Create a function named `player_turn` that takes the player's number as an argument and prints out the corresponding messages for that player's turn.
2. Use the `player_turn` function to print out the turns for players 1, 2, and 3.

## Exercise 3

Learn how to look for the relevant function in the lua documentation

- [Predefined basic functions](https://www.lua.org/manual/5.5/manual.html#6.2)
- [Lua standard libraries](https://www.lua.org/pil/contents.html#P3)

1. Use a basic function to convert the string "123" to a number, store the result in a variable called `converted_number`, and print it out.
2. Use a basic function to convert the number 456 to a string, store the result in a variable called `converted_string`, and print it out.
3. Use a library function to get the current date and time, store the result in a variable called `current_date_time`, and print it out. The result is a number representing the amount of seconds that has passed since January 1, 1970, which is known as the Unix epoch and exists this way because it provides a standard reference point for time calculations across different systems. Confirm your result by looking at the [expected value](https://www.epoch101.com/). It doesn't have to be 100% exact as in the link.
4. Use a library function to generate a random number between 1 and 100, store the result in a variable called `random_number`, and print it out.
5. Create a table called `sorting_table` with the following values: `{5, 2, 9, 1, 5, 6}`. Use a library function to sort the table of numbers in ascending order (this function will modify the existing table directly). Check the result by looping over the table to print all the values.
6. Use a library function to find the length of the string "Hello, world!", store the result in a variable called `string_length`, and print it out.

## Exercise 4

Let's create a house in a real estate board game!

1. Create a table named `house` with the following attributes:
   1. `color = "red"`
   2. `num_rooms = 5`
   3. `has_garage = true`
   4. `owner = "Alice"`
2. The next steps involve the creation of methods for the `house` object. Feel free to add helpful print messages so that the user can see the changes happening to the house when they call the methods.
3. Create a method named `describe` for the `house` table that prints out a description of the house using its attributes. The description should be in this exact format: "This house is [color], has [num_rooms] rooms, and [has/does not have] a garage."
4. Create a method named `paint` for the `house` table that takes a new color as an argument and changes the house's color to the new color.
5. Create a method named `add_room` for the `house` table that increases the number of rooms by 1.
6. Create a method named `change_owner` for the `house` table that takes a new owner as an argument and changes the house's owner to the new owner.
