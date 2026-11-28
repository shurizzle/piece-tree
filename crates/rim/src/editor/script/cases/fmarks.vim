set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal `A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 2G2|mA"
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
execute "normal G"
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
execute "normal G$"
execute "normal `A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mA"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal `A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 2G2|mA"
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
execute "normal G"
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
execute "normal G$"
execute "normal `A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mA"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
enew
append
x1
x2
.
execute "normal `A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
enew
append
x1
x2
.
execute "normal 2G2|mA"
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
execute "normal G"
execute "normal 'A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
execute "normal G$"
execute "normal `A"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mA"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal `B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 2G2|mA"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 2G2|mB"
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
execute "normal G"
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
execute "normal G$"
execute "normal `B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal mB"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal `B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 2G2|mA"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 2G2|mB"
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
execute "normal G"
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
execute "normal G$"
execute "normal `B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal mB"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
enew
append
x1
x2
.
execute "normal `B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 2G2|mA"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
enew
append
x1
x2
.
execute "normal 2G2|mB"
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
execute "normal G"
execute "normal 'B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
execute "normal G$"
execute "normal `B"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal mB"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal `1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal 2G2|m1"
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
execute "normal G"
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
execute "normal G$"
execute "normal `1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal m1"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal `1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
enew
append
x1
x2
.
execute "normal 2G2|m1"
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
execute "normal G"
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
execute "normal G$"
execute "normal `1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal m1"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
enew
append
x1
x2
.
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
enew
append
x1
x2
.
execute "normal `1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
enew
append
x1
x2
.
execute "normal 2G2|m1"
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
execute "normal G"
execute "normal '1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
execute "normal G$"
execute "normal `1"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal m1"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal `a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 2G2|ma"
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
execute "normal G"
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
execute "normal G$"
execute "normal `a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 1G1|"
execute "normal ma"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal `a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 2G2|ma"
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
execute "normal G"
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
execute "normal G$"
execute "normal `a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 2G4|"
execute "normal ma"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
enew
append
x1
x2
.
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
enew
append
x1
x2
.
execute "normal `a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 2G2|mB"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
enew
append
x1
x2
.
execute "normal 2G2|ma"
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
execute "normal ggOnew\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
execute "normal G"
execute "normal 'a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
execute "normal G$"
execute "normal `a"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
2kB
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
execute "normal 2Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
"---
set report=0 expandtab
append
alpha one
  beta two
gamma three
.
execute "normal 3G$"
execute "normal ma"
execute "normal Gdd"
echo line('.') col('.') string(getline(1,'$')) string(line("'A")) string(col("'A")) string(line("'B")) string(col("'B")) string(line("'1"))
