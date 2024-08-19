<!-- 
# Try It

Try the puzzles online in a Jupyter Notebook. No installs needed. 

Click here:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dfinke/Tiny-PowerShell-Projects/master)

-->

# Tiny PowerShell Projects

This is the code repository for _Tiny **PowerShell** Projects_.

I ported it from the Manning Publications book, _Tiny Python Projects_, by Ken Youens-Clark:

- The Python repo is here: https://github.com/kyclark/tiny_python_projects
- The Python book is here: https://www.manning.com/books/tiny-python-projects?a_aid=youens&a_bid=b6485d52

One of the many cool aspects of this not only the approach to learning `PowerShell` this way, additionally, you can head over to the `Python` repo and see how it is done in that language. Could be you are here because you're a Pythonista, and want to see how PoShers do it.

Either way, it's the same puzzles implemented in both languages, and you can use the tests provided, to do Test Driven Development and prove these and your solutions work, as you make changes.

## The Video
Scripting Success A Deep Dive into Tiny PowerShell Projects.

<a href="https://youtu.be/BVDBRty5mCU"><img src="https://img.youtube.com/vi/BVDBRty5mCU/0.jpg" width="450">


## The approach

There is a directory for each chapter of the book.
There is a README to describe each exercise.
Each directory contains a `test.ps1` program you can use with `Invoke-Pester` to check that you have written the program correctly.

In addition, each directory has two `PowerShell` scripts, one called `AllTest.ps1`, and the other `solution1.ps1`.

## AllTest

`AllTest.ps1` does something very _beneficial_. It looks in that chapters directory for all files that match the wildcard `solution*.ps1`, and one by one copies it to a `ps1` that is expected in the `test.ps1`, and the last step, it calls `Invoke-Pester`.

This allows you to keep the original solution supplied, and you can then create as many solutions as you'd like to test different ways to solve the puzzle. This lets you experiment with different ways to use a regex, arrays, hash tables or other approaches, in order to figure out better ways to handle this. The different solutions can sit side by side with the others and the `test.ps1` can be automatically run against all. 

## Testing is Integral
The testing step is integral to writing and solving these challenges.

Using a "test-driven development" mentality, where you write tests _before_ you write code, is very much recommended.

The tests should define what it means for a program to be correct, and then you write programs to satisfy the tests.

All the tests have been written for you, and you should write your own functions and tests.
Practice is key.

You should run the test suite after every change to your program to ensure you are making progress!

## Chapters

* [Chapter 1: How to write and test a PowerShell program](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/01_hello) How to create a PowerShell program that prints a string and takes a parameter. [[source code]](./01_hello/hello.ps1)

* [Chapter 2: Crow's Nest](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/02_crowsnest) How to write a PowerShell program that accepts a single, positional argument and creates a newly formatted output string. [[source code]](./02_crowsnest/crowsnest.ps1)

* [Chapter 3: Picnic](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/03_picnic) Writing a PowerShell program that accepts multiple string arguments and formats the results depending on the number of items. [[source code]](./03_picnic/picnic.ps1)

* [Chapter 4: Jump The Five](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/04_jump_the_five) Writing a PowerShell program to encode the numerals in a given text using an algorithm called "Jump The Five." Use of a dictionary as a lookup table, characters not in the dictionary remain unchanged. Introduction to encoding/decoding text, basic idea of encryption. [[source code]](./04_jump_the_five/jump.ps1) 

* [Chapter 5: Howler](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/05_howler) Writing a PowerShell program that can process input text either from the command line or from a file.The output prints either to STDOUT or to a file.  Learning about how to read/write the contents of a file. [[source code]](./05_howler/howler.ps1)

* [Chapter 6: Word Count](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/06_wc) Writing a PowerShell program to emulate a word count program. Validates and processes multiple file inputs as well as STDIN and creates output of the counts of lines, words, and characters for each file. [[source code]](./06_wc/wc.ps1)

* [Chapter 7: Gashlycrumb](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/07_gashlycrumb) Writing a PowerShell program that processes an input file to build a lookup table (dictionary) that is used with multiple positional arguments to translate to the values from the file. [[source code]](./07_gashlycrumb/gashlycrumb.ps1)

* [Chapter 8: Apples and Bananas](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/08_apples_and_bananas) Writing a PowerShell program to find and replace elements in a string.  [[source code]](./08_apples_and_bananas/apples.ps1)

* [Chapter 9: Abuse](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/09_abuse) Writing a PowerShell program to generate Shakespearean insults by randomly combining some number of adjectives with a randomly chosen noun. Learning about randomness, seeds, and testing. [[source code]](./09_abuse/abuse.ps1)

* [Chapter 10: Telephone](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/10_telephone) Using probabilistic and deterministic approaches to randomly mutate a string. [[source code]](./10_telephone/telephone.ps1)

* [Chapter 11: Bottles of Beer](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/11_bottles_of_beer
) Writing a PowerShell program to produce the verse to the "99 Bottles of Beer" song from a given starting point. Learning to count down, format strings, algorithm design. A focus on writing a function and unit test, exploring ways to incorporate our function to generate the verses from for loops. [[source code]](./11_bottles_of_beer/bottles.ps1)

* [Chapter 12: Ransom](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/12_ransom) Writing a PowerShell program that will randomly capitalize letters in a given piece of text for the nefarious purpose of creating a ransom note. [[source code]](./12_ransom/ransom.ps1)

* [Chapter 13: Twelve Days of Christmas](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/13_twelve_days) Writing a PowerShell program to create the verses for "The Twelve Days of Christmas" from a given day. Learning how to write a function and the test for it, then using the function in a list to generate the output. [[source code]](./13_twelve_days/twelve_days.ps1)

* [Chapter 14: The Rhymer](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/14_rhymer) Writing a PowerShell program that can split off any initial consonants from a word and append a list of prefixes to create new rhyming "words." Exploration of regular expressions to handle words with no initial consonants, with one or more leading consonants, and nothing but consonants. [[source code]](./14_rhymer/rhymer.ps1)

* [Chapter 15: The Kentucky Friar](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/15_kentucky_friar) In this chapter we delve further into regular expressions, first learning how to split a string using a regex so we can separate things that look like "words" from non-words like punctuation and whitespace. Then we try to identify the word "you" (case-insensitive) to turn into "y'all" and any 2-syllable words ending in "-ing" so we can replace the final "g" with an apostrophe so that "cooking" becomes "cookin'" but "swing" would remain "swing." We then apply this to an entire body of text to Kentucky fry the words with amusing results. [[source code]](./15_kentucky_friar/friar.ps1)

* [Chapter 16: The Scrambler](https://github.com/dfinke/Tiny-PowerShell-Projects/tree/master/16_scrambler) Writing a PowerShell program to find each "word" in a body of text and then scramble the letters such that the first and last letters remain in place, then reconstructing the text for output. Using regular expressions to split text, using `Sort-Object { Get-Random }`. [[source code]](./16_scrambler/scrambler.ps1)

<!-- * [Chapter 17: Mad Libs]() Writing a PowerShell program to play the classic Mad Libs game. Reading an input file with placeholders for parts of speech like "adjective" or "noun." Getting the inputs to replace those from the user interactively via the "input()" function or taking them from the command-line arguments. Using regular expressions to find and replace the placeholders. Learning about greedy regex and how to make them not greedy. Using the `re.findall()` and `re.sub()` functions. Using `sys.exit()` to prematurely exit a program with an error message/value. -->

<!-- # Videos

I've been making videos for each chapter on my YouTube channel:

https://www.youtube.com/user/kyclark

Here are the videos I've completed so far:

* [Chapter 1: How to write and test a Python program](https://www.youtube.com/playlist?list=PLhOuww6rJJNP7UvTeF6_tQ1xcubAs9hvO): How to create a Python program, understanding comments and the shebang, how to make a program executable and install into your $PATH, how to write a main() function, add docstrings, format your code, and run tests.

* [Chapter 2: Crow's Nest](https://www.youtube.com/playlist?list=PLhOuww6rJJNPBqIwfD-0RedqsitBliLhT): How to write a Python program that accepts a single, positional argument and creates a newly formatted output string.

* [Chapter 3: Picnic](https://www.youtube.com/playlist?list=PLhOuww6rJJNMuQohHrNxRjhFTR9UlUOIa): Writing a Python program that accepts multiple string arguments and formats the results depending on the number of items.

* [Chapter 4: Jump The Five](https://www.youtube.com/playlist?list=PLhOuww6rJJNNd1Mbu3h6SGfhD-8rRxLTp): Writing a Python program to encode the numerals in a given text using an algorithm called "Jump The Five." Use of a dictionary as a lookup table, characters not in the dictionary remain unchanged. Introduction to encoding/decoding text, basic idea of encryption.

* [Chapter 5: Howler](https://www.youtube.com/playlist?list=PLhOuww6rJJNNzo5zqtx0388myQkUKyrQz): Writing a Python program that can process input text either from the command line or from a file.The output prints either to STDOUT or to a file.  Learning about "os.path.isfile", how to "open" a file handle for reading/writing, how to read/write the contents of a file.

* [Chapter 6: Word Count](https://www.youtube.com/playlist?list=PLhOuww6rJJNOGPw5Mu5FyhnumZjb9F6kk): Writing a Python program to emulate the `wc` (word count) program. Validates and processes multiple file inputs as well as STDIN and creates output of the counts of lines, words, and bytes for each file optionally with a "total" if more than one file is provided.

* [Chapter 7: Gashlycrumb](https://www.youtube.com/playlist?list=PLhOuww6rJJNMxWy34-9jlD2ulZxaA7mxV): Writing a Python program that processes an input file to build a lookup table (dictionary) that is used with multiple positional arguments to translate to the values from the file.

* [Chapter 8: Apples and Bananas](https://www.youtube.com/playlist?list=PLhOuww6rJJNMe_qrKzw6jtxzHkTOszozs): Writing a Python program to find and replace elements in a string. Exploring multiple ways to write the same idea from for loops to list comprehensions to higher-order functions like map().

* [Chapter 9: Abuse](https://www.youtube.com/playlist?list=PLhOuww6rJJNOWShq53st6NjXacHHaJurn): Writing a Python program to generate Shakespearean insults by randomly combining some number of adjectives with a randomly chosen noun. Learning about randomness, seeds, testing, how to use triple-quoted strings.

* [Chapter 10: Telephone](https://www.youtube.com/playlist?list=PLhOuww6rJJNN0T5ZKUFuEDo3ykOs1zxPU): Using probabalistic and deterministc approaches to randomly mutating a string.

* [Chapter 11: Bottles of Beer](https://www.youtube.com/playlist?list=PLhOuww6rJJNNGDXdGGfp3RDXBMhJwj0Ij): Writing a Python program to produce the verse to the "99 Bottles of Beer" song from a given starting point. Learning to count down, format strings, algorithm design. A focus on writing a function and unit test, exploring ways to incorporate our function to generate the verses from for loops to list comprehensions to map().

* [Chapter 12: Ransom](https://www.youtube.com/playlist?list=PLhOuww6rJJNMxWhckg7FO4cEx57WgHbd_): Writing a Python program that will randomly capitalize letters in a given piece of text for the nefarious purpose of creating a ransom note. Exploration of for loops, list comprehensions, and the map() function.

* [Chapter 13: Twelve Days of Christmas](https://www.youtube.com/playlist?list=PLhOuww6rJJNNZEMX12PE1OvSKy02UQoB4): Writing a Python program to create the verses for "The Twelve Days of Christmas" from a given day. Learning how to write a function and the test for it, then using the function in a list comprehension and a map to generate the output.

* [Chapter 14: The Rhymer](https://www.youtube.com/playlist?list=PLhOuww6rJJNPNn2qa5ATHJ0qd-JUgM_s0): Writing a Python program that can split off any initial consonants from a word and append a list of prefixes to create new rhyming "words." Exploration of regular expressions to handle words with no initial consonants, with one or more leading consonants, and nothing but consonants. Writing a `stemmer()` function and the `test_stemmer()` function to understand it. Using list comprehensions with guard statements and how that relates to the `filter()` function.

* [Chapter 15: The Kentucky Friar](https://www.youtube.com/playlist?list=PLhOuww6rJJNMflxi3aRAQTqG7mvOXRObW): In this chapter we delve further into regular expressions, first learning how to split a string using a regex so we can separate things that look like "words" from non-words like punctuation and whitespace. Then we try to identify the word "you" (case-insensitive) to turn into "y'all" and any 2-syllable words ending in "-ing" so we can replace the final "g" with an apostrophe so that "cooking" becomes "cookin'" but "swing" would remain "swing." We then apply this to an entire body of text to Kentucky fry the words with amusing results.

* [Chapter 16: The Scrambler](https://www.youtube.com/playlist?list=PLhOuww6rJJNPcLby3JXlKSo6duCIjh93S): Writing a Python program to find each "word" in a body of text and then scramble the letters such that the first and last letters remain in place, then reconstructing the text for output. Using regular expressions to split text, using `random.shuffle()` and understanding in-place mutation vs returning a new value. Comparing `for` loops to list comprehensions and the "map()" function.

* [Chapter 17: Mad Libs](https://www.youtube.com/playlist?list=PLhOuww6rJJNPnNx_Emds00y2RX1Tbk59r): Writing a Python program to play the classic Mad Libs game. Reading an input file with placeholders for parts of speech like "adjective" or "noun." Getting the inputs to replace those from the user interactively via the "input()" function or taking them from the command-line arguments. Using regular expressions to find and replace the placeholders. Learning about greedy regex and how to make them not greedy. Using the `re.findall()` and `re.sub()` functions. Using `sys.exit()` to prematurely exit a program with an error message/value.

# Forking GitHub repo

First use the GitHub interface to "fork" this repository into your own account. Then do `git clone` of *your* repository to get a local copy. Inside that checkout, do:

````
git remote add upstream https://github.com/kyclark/tiny_python_projects.git 
````

This will allow you to `git pull upstream master` in order to get updates. When you create new files, `git add/commit/push` them to *your* repository. (Please do not create pull requests on *my* repository -- unless, of course, you have suggestions for improving my repo!).

# Copyright

© Ken Youens-Clark 2019-2020 -->
