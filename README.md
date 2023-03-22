# haskell-fun

### About

Haskell is a **functional programming language** that was first developed in the late 1980s by a group of researchers led by the computer scientist, Philip Wadler. It is named after the logician Haskell Curry. Haskell is a **statically-typed** language, which means that all types are known at compile time. Some of the key features of Haskell include **lazy evaluation, pattern matching, higher-order functions, and type inference**. 

Haskell is used in a variety of applications, including scientific computing, web development, and financial analysis. Its strong type system and functional nature make it well-suited for applications that require correctness and reliability.

[Haskell docs](https://www.haskell.org/documentation/)

[GHC/GHCi docs](GHC/GHCi docs)



### Examples

Unlike JavaScript which is dynamically typed, Haskell is statically-typed..

```haskell
-- Define a function to calculate the sum of two integers
add :: Int -> Int -> Int
add x y = x + y

-- Call the add function
result = add 3 4
```



### Get Started

Haskell is run by first compiling the Haskell source code into an executable program, and then running the program on the target platform.

The Haskell compiler (Glasgow Haskell Compiler) GHC, takes Haskell source code as input and generates machine/bytecode that can be run on a computer. GHC supports x86, ARM, Windows, macOS, and Linux.



To compile Haskell code using GHC..

```bash
ghc myprogram.hs
```

This will generate an executable program named `myprogram` that can be run on the target platform.

You can run it by executing the generated executable file.

```bash
./myprogram
```



Alternatively, you can use the GHCi (GHC interactive) environment, which allows you to interactively execute Haskell code.

To start the GHCi interpreter..

```bash
ghci
```

You can also load Haskell source files into GHCi using the `:load` command and interactively execute the code.



### All together now!

Create `myprogram.hs`..

```haskell
-- Define a function to calculate the sum of two integers
add :: Int -> Int -> Int
add x y = x + y

-- Call the add function with two integers
result = add 3 4

-- Print the result to the console
main = putStrLn (show result)
```

Start GHCi interpreter..

```bash
ghci
```

In GHCi, load the file..

```bas
Prelude> :load myprogram.hs
```

Now you can type a function name or any expression defined in the file. 

Let's call the `add` function with 3 and 4..

```bash
*Main> add 3 4
```

Let's execute the `result` variable..

```bash
*Main> result
```

Let's execute the `main` function..

```bash
*Main> main
```



### JavaScript and Haskell rounding

#### JavaScript

All numbers in JavaScript are stored as floating point numbers in memory

That is, every number is converted to scientific notation like.. 1.2345 * 10^25

And stored using up to 64 bits of binary memory for each number.. 

- One bit for the sign (+ or -)
- 11 bits for the exponent
- 52 bits for the fraction (1.2345)

This is because computer memory is limited, so computers cannot store numbers with infinite precision

so to store 1/10 which to humans is simply 0.1 (decimal number system)

a computer actually stores this as 0.0001100110011--repeated (binary number system)

So the question was how many digits should be used to store this number in memory?

And again that answer is 64 bits as detailed above

and so just like when humans add 1/3 + 1/3 + 1/3 but without using fractions so..

0.3333 + 0.3333 + 0.3333 = 0.9999

when a computer adds something like 0.1 + 0.2 we may get something like 0.30000000000000004



this shows up in rounding as well..

```javascript
Math.round(0.145 * 100) / 100; // returns 0.14
```

because `0.14` is actually stored as `0.14499999999999998` in memory.

One elegant solution to this in JavaScript is..

```javascript
Number(Math.round(0.145 + 'e2') + 'e-2') // 0.15 Yay!
```



#### Haskell

Though Haskell stores numbers in memory in a slightly different way, it is still subject to the same errors..

```haskell
fromIntegral (round (0.145 * 100)) / 100 -- returns 0.14
```

Here is a solution, comparable to our vanilla JS solution above..

```haskell
???
```



Note for both JavaScript and Haskell there are librabries/modules for dealing with floating point numbers :)





