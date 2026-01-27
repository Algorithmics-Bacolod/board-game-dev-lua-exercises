# Lesson 18 Exercises about the following topics

- Relational Operators
- Logical Operators
- if, then, else statements
- elseif keyword

## How to answer Exercises

1. Create a new file for each exercise named `exercise1.lua`, `exercise2.lua`, etc.
2. Write your code in the corresponding file following the **exact specifications** below.
3. Run tests using the VS Code Testing tab to check your work.

## Important Requirements

- Use the exact variable names specified in each exercise
- Follow the branching logic patterns described

## Exercise 1 - Relational Operators

**Objective**: Practice using relational operators (>, <, ==, >=, <=, ~=) to compare numeric values.

**Specific Requirements**:

1. Create two numeric variables: `x = 10` and `y = 5`
2. Check the result of the following comparisons:
   - `x > y`
   - `x < y`
   - `x == y`
   - `x >= y`
   - `x <= y`
   - `x ~= y`

   and save the results in the following variables respectively:
   - `greater`, `less`, `equal`, `greater_equal`, `less_equal`, `not_equal`
3. Print messages indicating the result of each comparison

## Exercise 2 - Logical Operators

**Objective**: Practice using logical operators (and, or, not) to combine boolean expressions.

**Specific Requirements**:

1. Create two boolean variables `a` and `b`, and assign them any boolean values.
2. Check the result of the following comparisons:
   - `a and b`
   - `a or b`
   - `not a`
   - `not b`

   and save the results in the following variables respectively:
   - `and_result`, `or_result`, `not_a`, `not_b`
3. Print messages indicating the result of each logical operation

## Exercise 3 - Solo if statements

**Objective**: A player has a guaranteed hit on a monster. Now, they have an ability that allows them to do 1 extra damage if they roll higher than 10 on a d20 dice. They also have another separate ability that allows them to heal 1 health if they roll exactly a 20 on that same dice roll. Implement this logic using only if statements.

**Specific Requirements**:

1. Create a `player_damage` variable and set it to 5.
2. Create a `player_health` variable and set it to 10.
3. Create a `monster_health` variable and set it to 6.
4. Create a `dice_roll` variable and set it to any number between 1 and 20.
5. Check if the dice roll is greater than 10 and add 1 to `player_damage` if true.
6. Check if the dice roll is equal to 20 and add 1 to `player_health` if true.
7. Subtract `player_damage` from `monster_health`.
8. Print the final values of `player_damage`, `player_health`, and `monster_health`.
9. Test all the cases by manually changing the value of `dice_roll`.
10. Comment out the `dice_roll` variable before running the VS Code solution test.

## Exercise 4 - if, then, else statements

**Objective**: A player is attempting to pick a lock. They have a dexterity level represented by a numeric variable `dexterity`. The lock has a difficulty level represented by a numeric variable `lock_difficulty`. Implement the lock-picking logic using if-then-else statements.

**Specific Requirements**:

1. Create a variable `dexterity` and assign it a numeric value
2. Create a variable `lock_difficulty` and assign it a numeric value
3. Create a variable `lock_picked` to store the result of the lock-picking attempt
4. Implement the following logic:
   - If `dexterity` is greater than or equal to `lock_difficulty`, the player succeeds in picking the lock, and `lock_picked` is set to true. A message "Lock picked successfully!" is printed.
   - If `dexterity` is less than `lock_difficulty`, the player fails to pick the lock, and `lock_picked` is set to false. A message "Failed to pick the lock." is printed.
5. Test both success and failure cases by changing the values of `dexterity` and `lock_difficulty`.
6. Comment out the `dexterity` and `lock_difficulty` variables before running the VS Code solution test.

## Exercise 5 - if-then-elseif-else statements

**Objective** A player is choosing 1 among 5 different game difficulty levels: Very Easy, Easy, Normal, Hard, Very Hard. Each difficulty level affects the player's starting health points (HP).

**Specific Requirements**:

1. Create a variable `difficulty_level` and assign it a numeric value (1 to 5)
2. Create a variable `starting_hp` to store the player's starting health points and initialize it to 0
3. Implement the following logic using if-then-elseif-else:
   - If `difficulty_level` is 1 (Very Easy), set `starting_hp` to 150 and print "You have chosen Very Easy difficulty. Starting HP: 150"
   - If `difficulty_level` is 2 (Easy), set `starting_hp` to 120 and print "You have chosen Easy difficulty. Starting HP: 120"
   - If `difficulty_level` is 3 (Normal), set `starting_hp` to 100 and print "You have chosen Normal difficulty. Starting HP: 100"
   - If `difficulty_level` is 4 (Hard), set `starting_hp` to 80 and print "You have chosen Hard difficulty. Starting HP: 80"
   - If `difficulty_level` is 5 (Very Hard), set `starting_hp` to 60 and print "You have chosen Very Hard difficulty. Starting HP: 60"
   - If `difficulty_level` is not between 1 and 5, print "Invalid difficulty level selected."
4. Test all the cases by manually changing the value of `difficulty_level`.
5. Comment out the `difficulty_level` variable before running the VS Code solution test.

## Exercise 6 - Combined Concepts

**Objective**: Implement an RPG disguise skill test system using a d20 dice roll.

**Specific Requirements**:

1. Create a variable `roll_result` and assign it a numeric value (e.g., 15)
2. Create a variable `disguise_outcome` and use conditional statements to determine its value based on `roll_result`:
   - Roll is exactly 20: "Critical Success"
   - Roll is 15 to 19: "Success"
   - Roll is 10 to 14: "Partial Success"
   - Roll is 5 to 9: "Failure"
   - Roll is 1 to 4: "Critical Failure"
3. Additionally, print detailed messages for each outcome:
   - Roll is 20: print "Flawless performance! The entire audience is completely convinced by your disguise!"
   - Roll is 15 to 19: print "Excellent deception! Most of the audience believes you are who you claim to be!"
   - Roll is 10 to 14: print "Some people are suspicious, but your disguise mostly holds up!"
   - Roll is 5 to 9: print "Your disguise is unconvincing - several people see through your act!"
   - Roll is 1 to 4: print "Disaster! Your disguise fails spectacularly and everyone knows you're a fraud!"
4. Test all the cases by manually changing the value of `roll_result`.
5. Comment out the `roll_result` variable before running the VS Code solution test.

## Exercise 7 - Compound Boolean Logic

**Objective**: A player is trying to defeat the final boss of a game. He can do it only if he has both the Sacred Sword and the Magic Shield, or if he has the Ancient Spellbook, which is harder to find.

**Specific Requirements**:

1. Create a boolean variable `has_sacred_sword` and assign it a value (true or false).
2. Create a boolean variable `has_magic_shield` and assign it a value (true or false).
3. Create a boolean variable `has_ancient_spellbook` and assign it a value (true or false).
4. Create a variable `can_defeat_final_boss` and use boolean logic to determine its value based on the previous variables.
   - The player can defeat the final boss if they have both the Sacred Sword and the Magic Shield, or if they have the Ancient Spellbook.
5. Based on the value of `can_defeat_final_boss`, print one of the following messages:
   - "You are prepared to face the final boss!"
   - "You lack the necessary items to defeat the final boss."
6. Test all the cases by manually changing the values of the boolean variables.
7. Comment out the boolean variables before running the VS Code solution test.

## Testing Your Solutions

### Individual Testing

Run each test file to verify your solution:

```bash
lua test_exercise1.lua
lua test_exercise2.lua
# ... etc
```

### Run All Tests

Test all exercises at once:

```bash
lua run_all_tests.lua
```
