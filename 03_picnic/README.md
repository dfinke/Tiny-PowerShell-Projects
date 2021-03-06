# Picnic

Write a program that will correctly format the items we're taking on our picnic.
For one item, it should print the one item.

```
PS C:\> .\picnic.ps1 sandwiches
You are bringing sandwiches.
```

For two items, place "and" in between:

```
PS C:\> .\picnic.ps1 sandwiches chips
You are bringing sandwiches and chips.
```

For three or more items, use commas and "and":

```
PS C:\> .\picnic.ps1 sandwiches chips cake
You are bringing sandwiches, chips, and cake.
```

If the `-sorted` flag is present, the items should first be sorted:

```
PS C:\> .\picnic.ps1 sandwiches chips cake -sorted
You are bringing cake, chips, and sandwiches.
```

Expected results from `Invoke-Pester`
```
Starting discovery in 1 files.
Discovering in D:\mygit\tiny_powershell_projects\03_picnic\test.ps1.
Found 6 tests. 31ms
Discovery finished in 54ms.

Running tests from 'D:\mygit\tiny_powershell_projects\03_picnic\test.ps1'
Describing Test for 03_picnic
  [+] Should exist 5ms (4ms|1ms)
  [+] Should handle one item 7ms (6ms|1ms)
  [+] Should handle two items 7ms (6ms|1ms)
  [+] Should handle more than two items 8ms (7ms|2ms)
  [+] Should handle two items sorted 10ms (8ms|2ms)
  [+] Should handle more than two items sorted 15ms (13ms|2ms)
Tests completed in 222ms
Tests Passed: 6, Failed: 0, Skipped: 0 NotRun: 0
```