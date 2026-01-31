# Lua Exercises about the following topics

- Loops that repeat N times
- Loops that go over a sequence
- Looping until a condition is met
- Comparing between `while` and `repeat` to use in a loop
- Mixing branching and looping algorithms
- Exiting loops early using `break`

All exercises are board game themed.

## How to answer Exercises

1. Create a new file for each exercise named `exercise1.lua`, `exercise2.lua`, etc.
2. Write your code in the corresponding file following the **exact specifications** below.
3. Run tests using the VS Code Testing tab to check your work.

## Exercise 1 - repeating N times

**Objective**: In a board game about adventuring in a dungeon, a monster attacks a player 5 times. Perform this using a loop and show the final results.

**Specific Requirements**:

1. Create two numeric variables `player_health = 100` and `monster_attack = 5`.
2. Print the initial `player_health`.
3. Use a for loop to repeat the monster's attack 5 times.
4. In each loop, reduce the `player_health` by `monster_attack`.
5. In each loop, print a message indicating that the monster attacked.
6. After the loop, print the final `player_health`.

## Exercise 2 - looping over a sequence

**Objective**: In a board game about military operations, a player uses a flamethrower attack that damages all enemies in front of him. Loop over all enemies and apply damage to each. Give each enemy different names and health values.

**Specific Requirements**:

1. Create a table called `enemies`.
2. Put at least 3 tables inside `enemies`, each representing an enemy with `name` and `health` fields. You can define variables inside of tables, for example: `{name = "Assassin", health = 30}`.
3. Create a variable `flamethrower_damage = 10`.
4. Use a for loop to iterate over each enemy in the `enemies` table.
5. Print the health of each enemy
6. Use a second for loop to apply the flamethrower damage to each enemy by reducing their `health` by `flamethrower_damage`. You can access variables inside of a table using dot notation, for example: `enemy.health` and `enemy.name`.
7. After applying the damage, print the new health of each enemy.

## Exercise 3 - looping until a condition is met

**Objective**: In a board game about an evil cult, a "madman" has a special ability called "Blood for the Blood God" to keep attacking at the cost of his own health, until his health drops below a certain threshold. The madman uses this ability on a player.

**Specific Requirements**:

1. Create the following variables:
    - `madman_health = 100`
    - `madman_attack = 12`
    - `madman_health_cost = 10`
    - `player_health = 100`
    - `madman_threshold = 20`
2. Print the initial `madman_health` and `player_health`.
3. Use a `while` loop to keep attacking as long as `madman_health` is above `madman_threshold`.
4. In each loop iteration:
    - Reduce `player_health` by `madman_attack`.
    - Reduce `madman_health` by `madman_health_cost`.
    - Print a message indicating the attack happened.
5. After the loop, print the final `madman_health` and `player_health`.
6. Try again, this time changing some of the variable values.

## Exercise 4 - comparing between `while` and `repeat`

**Objective**: In a board game about fashion, the outcome of a fashion show is resolved by a series of dice rolls. The player keeps rolling a die until they roll a 6. The number of die rolls represents how many outfits were a hit with the audience and critics.

**Specific Requirements**:

1. Setup the random number generation by pasting `math.randomseed(os.time() + os.clock())` at the top of your code.
2. Create a variable `die_roll` initialized to 0.
3. Create a variable `successful_outfits` initialized to 0.
4. Use either a `while` or `repeat` loop to simulate rolling a die until a 6 is rolled
5. In each loop iteration:
    - Generate a random number between 1 and 6 and assign it to `die_roll`. You can use `math.random(1, 6)` to generate the random number.
    - If `die_roll` is not 6, increase `successful_outfits` by 1.
    - Print the value of each `die_roll`.
6. After the loop, print the total number of `successful_outfits`.
7. Try again, this time using the other type of loop (`while` if you used `repeat` the first time, or vice versa).

## Exercise 5 - mixing branching and looping algorithms

**Objective**: In a board game about space exploration, the game enters the "surveying" phase. Each player draws a random star system card and reveals the events at the back. The surveying goes on, resolving each event one by one, until all events in that star system are resolved. The events have branching outcomes depending on random rolls and player choices.

**Specific Requirements**:

1. Setup the random number generation by pasting `math.randomseed(os.time() + os.clock())` at the top of your code.
2. Create a table called `star_system_events` containing at least 4 events. Each event should be a table with the following fields:
    - `description`: A string describing the event.
    - `type`: A string indicating the type of event (e.g., "combat", "discovery", "trade").
    - `difficulty`: A numeric value representing the difficulty level of the event.
3. Use a `for` loop to iterate over all the `star_system_events`
4. In each loop iteration:
    - Print the `description` of the current event using the format: `"Event: " .. event.description`
    - Use branching (`if`, `elseif`, `else`) to handle different event types:
        - For "combat" events, simulate a combat roll (random number between 1 and 20) and compare it to the event's `difficulty`. Print the exact messages:
            - If successful: `"Combat succeeded with a roll of " .. roll .. "!"`
            - If failed: `"Combat failed with a roll of " .. roll .. "."`
        - For "discovery" events, simulate a discovery roll (random number between 1 and 10) and print: `"Discovery roll: " .. roll`
        - For "trade" events, simulate a trade negotiation roll (random number between 1 and 15) and compare it to the event's `difficulty`. Print the exact messages:
            - If successful: `"Trade successful with a roll of " .. roll .. "!"`  
            - If failed: `"Trade failed with a roll of " .. roll .. "."`
    - Print a separator line after each event for clarity using: `"-------------------------"`
5. After the loop, print the exact message: `"Star system survey complete."`

## Exercise 6 - exiting loops early using `break`

**Objective**: In a board game about buying and selling stocks, a player has a stock that they plan to hold for 5 months, and it has an automated selloff condition. Each month, the stock price is checked, and if any stock falls below the player's sell threshold, the stock is sold immediately, exiting the checking loop before the 5 months are up.

**Specific Requirements**:

1. Setup the random number generation by pasting `math.randomseed(os.time() + os.clock())` at the top of your code.
2. Create the following variables:
    - `stock_price = 100`
    - `sell_threshold = 70`
    - `months_to_hold = 5`
    - `price_change_range = {-15, 15}` (a table representing the range of possible price changes each month)
3. Print the initial `stock_price`.
4. Use a for loop to simulate checking the stock price for each month from 1 to `months_to_hold`.
5. In each loop iteration:
    - Generate a random price change within the `price_change_range` and apply it to `stock_price`. You can use `math.random(price_change_range[1], price_change_range[2])` to generate the random change.
    - Print the new `stock_price` after applying the change.
    - If `stock_price` falls below `sell_threshold`, print a message indicating that the stock is being sold and use `break` to exit the loop early.
    - If the stock price does not fall below the threshold, print a message indicating that the player is holding the stock for another month.
6. After the loop, print a message indicating how much the stock sold for.
7. Repeat several times until you observe the early exit behavior as well as the full 5-month holding period.
