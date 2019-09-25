# Ping All SS Hosts

Create a `servers.tsv` (not in code base).

It should contain 3 columns (TAB separated, no header line):

1. Name
2. Any Value (e.g. Bandwidth Ratio)
3. Host

``` bash
$ ./ping-all.sh
checking server1.com ... ✘
checking server2.com ... ✔ 280.858ms ss1 1
checking server3.com ... ✘
checking server4.com ... ✘
checking server5.com ... ✔ 215.016ms ss2 1
```
