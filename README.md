# ANTLR-Programming-Grammar

This repository contains a grammar definition for a simple programming language using ANTLR. The grammar is defined in the `State.g4` file and supports basic constructs such as variable assignments, expressions, and print statements.

## Grammar Overview

The grammar supports the following features:

- **Variable Assignment**: Assign values to variables using the `=` operator.
- **Expressions**: Perform arithmetic operations (`+`, `-`, `*`, `/`) and comparisons (`<`, `<=`, `>`, `>=`, `==`).
- **Print Statements**: Print the result of an expression using the `print` keyword.
- **Identifiers**: Variables must start with a letter or underscore and can include letters, numbers, and underscores.
- **Integer Literals**: Supports positive and negative integers.

## File Structure

- `State.g4`: Contains the ANTLR grammar definition.
- `State.`: Placeholder file (currently empty).

## How to Use

1. Install ANTLR: Follow the [ANTLR installation guide](https://www.antlr.org/).
2. Generate the parser and lexer using the `State.g4` grammar file:
   ```sh
   antlr4 State.g4
   ```
3. Compile the generated files:
   ```sh
   javac *.java
   ```

4. Run the parser with an input file:
   ```sh
   grun State program -gui <input_file>
   ```

## Example Code

Here is an example of a program that can be parsed using this grammar:

```plaintext
x = 42 + (9*9);
y = x + 9;
print(y);
y = (y/20) + (x*20);
print(y == x);
y = -y;
```

### Explanation:
1. `x = 42 + (9*9);`: Assigns the value `123` to `x` (calculated as `42 + 81`).
2. `y = x + 9;`: Assigns the value `132` to `y` (calculated as `123 + 9`).
3. `print(y);`: Prints the value of `y`, which is `132`.
4. `y = (y/20) + (x*20);`: Updates `y` to `2466` (calculated as `(132 / 20) + (123 * 20)`).
5. `print(y == x);`: Prints `false` because `2466` is not equal to `123`.
6. `y = -y;`: Negates the value of `y`, making it `-2466`.

This program demonstrates variable assignments, arithmetic operations, comparisons, and the use of negative integers.

## License

This project is licensed under the MIT License.
