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

```c
Prelude> :load myprogram.hs
```

Now you can type a function name or any expression defined in the file. 

Let's call the `add` function with 3 and 4..

```c
*Main> add 3 4
```

Let's execute the `result` variable..

```c
*Main> result
```

Let's execute the `main` function..

```c
*Main> main
```





ok