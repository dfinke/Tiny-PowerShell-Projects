# Crowsnest

A passing test suite looks like this:

```powershell
Invoke-Pester
```

```
Starting discovery in 1 files.
Discovering in D:\mygit\tiny_powershell_projects\02_crowsnest\crowsnest.tests.ps1.
Found 5 tests. 8ms
Discovery finished in 12ms.

Running tests from 'D:\mygit\tiny_powershell_projects\02_crowsnest\crowsnest.tests.ps1'
Describing tests for crowsnest.ps1
  [+] test crowsnest.ps1 exits 2ms (1ms|0ms)
  [+] test consonant 47ms (46ms|0ms)
  [+] test consonant uppercase 51ms (51ms|1ms)
  [+] test vowel 11ms (10ms|1ms)
  [+] test vowel uppercase 14ms (14ms|1ms)
Tests completed in 212ms
Tests Passed: 5, Failed: 0, Skipped: 0 NotRun: 0
```