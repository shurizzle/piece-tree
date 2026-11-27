set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal 3dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal 3dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal 3dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal 3dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal 3dd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d'a"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d'a"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d'a"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d'a"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d'a"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d2j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d2j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d2j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d2j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d2j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal cc"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal cc"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal cc"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal cc"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal cc"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal 2<<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal 2<<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal 2<<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal 2<<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal 2<<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal <G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal <G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal <G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal <G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal <G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal Vd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal Vd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal Vd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal Vd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal Vd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal Vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal Vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal Vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal Vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal Vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal Vj<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal Vj<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal Vj<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal Vj<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal Vj<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal vjd"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal V<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal V<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal V<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal V<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal V<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dH"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dH"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dH"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dH"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dH"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal D"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal S"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal S"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal S"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal S"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal S"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal x"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal J"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal ="
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal ="
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal ="
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal ="
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal ="
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d3G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d3G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d3G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d3G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d3G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d1G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d1G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d1G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d1G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d1G"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dl"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dl"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dl"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dl"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dl"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dh"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dh"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dh"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dh"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dh"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal dd.."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal dd.."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal dd.."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal dd.."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal dd.."
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d'<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d'<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d'<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d'<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d'<"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 2G7|"
execute "normal d'>"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 3G2|"
execute "normal d'>"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 1G1|"
execute "normal d'>"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 7G$"
execute "normal d'>"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
normal! ma
execute "normal! 5G9|"
execute "normal d'>"
echo line('.') col('.') string(getline(1,'$'))

"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal <k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal <k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal <k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal <k"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal cj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal cj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal cj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal cj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal 3dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal 3dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal 3dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal 3dj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal 3dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal 3dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal 3dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal 3dk"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G1|"
execute "normal dgj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 8G$"
execute "normal dgj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G3|"
execute "normal dgj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal dgj"
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta

  five six seven eight
  nine ten

    last para line
.
execute "normal! 1G$"
execute "normal d-"
echo line('.') col('.') string(getline(1,'$'))

