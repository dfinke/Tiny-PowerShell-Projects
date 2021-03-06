# Mad Libs

Write a "Mad Libs" program that will read a given file and prompt the user for the parts of speech indicated in angle brackets, e.g., `<verb>`, replacing those values and printing the new text a la the beloved "Mad Libs" game.

For example, the input file might look like this

```
$ cat inputs/fox.txt
The quick <adjective> <noun> jumps <preposition> the lazy <noun>.
```

When run with this input, the program would prompt the user for "adjective," "noun," etc.
When all the answers have been collected, the new text will be printed

```
C:\> ./mad.ps1 inputs/fox.txt
Give me an adjective: scary
Give me a noun: chair
Give me a preposition: behind
Give me a noun: sky
The quick scary chair jumps behind the lazy sky.
```

In order to test, the program should also accept all the values as `-i` or `--inputs`

```
C:\> ./mad.ps1 inputs/fox.txt -i scary chair behind sky
The quick scary chair jumps behind the lazy sky.
```