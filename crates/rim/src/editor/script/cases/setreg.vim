echo setreg("a", "abc")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc", "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc", "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc", "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "b")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc", "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc", "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc", "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc", "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "\<C-v>3")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc", "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc", "cl")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc", "cl")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc", "b1x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc\n")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc\n", "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc\n", "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc\n", "b5")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc\n", "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "abc\n", "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc\n", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "abc\n", "x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "abc\n", "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb", "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "c")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb", "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb", "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb", "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb", "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb", "b0")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb", "b1x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb\n", "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb\n", "b")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb\n", "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "b")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb\n", "b5")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb\n", "b5")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb\n", "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb\n", "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb\n", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb\n", "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "b0")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\nb\n", "x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb\n", "x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\nb\n", "cl")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\nb\n", "b1x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "", "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "", "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "", "b5")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "", "b5")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "", "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "", "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "", "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "", "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "", "\<C-v>3")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "", "cl")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "", "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "", "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "", "b1x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n", "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n", "b")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n", "b5")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n", "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "\n", "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n", "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n", "x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n", "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n\n")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n\n")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "\n\n", "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n\n", "c")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "\n\n", "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n\n", "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n\n", "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "\n\n", "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n\n", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "\n\n", "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n\n", "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n\n", "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "\n\n", "cl")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "\n\n", "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "x\r", "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "x\r", "V")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "x\r", "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "x\r", "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "x\r", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "x\r", "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "x\r", "b0")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "x\r", "x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "x\r", "cl")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "é日\n")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "é日\n", "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "é日\n", "c")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "é日\n", "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "é日\n", "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "é日\n", "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "é日\n", "b")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "é日\n", "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "é日\n", "V")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "é日\n", "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "é日\n", "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "é日\n", "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "é日\n", "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "é日\n", "b0")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "é日\n", "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "é日\n", "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "é日\n", "cl")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "é日\n", "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b"])
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "b")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b"], "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "b5")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b"], "b5")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b"], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "V")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b"], "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b"], "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b"], "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "\<C-v>3")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "b0")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b"], "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [])
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [], "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [], "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [], "b")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [], "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [], "b5")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [], "b5")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [], "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [], "V")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [], "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [], "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [], "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [], "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [], "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [], "x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [], "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [], "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [], "b1x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [""])
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [""])
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [""], "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [""], "c")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [""], "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [""], "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [""], "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [""], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [""], "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [""], "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [""], "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [""], "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [""], "b1x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a"])
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a"], "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a"], "b5")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a"], "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a"], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a"], "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a"], "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a"], "b0")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a"], "x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a"], "x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a"], "cl")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a"], "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a"], "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a"], "b1x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""])
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b",""], "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""], "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""], "b")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b",""], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""], "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b",""], "V")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b",""], "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b",""], "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""], "b0")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""], "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b",""], "cl")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["a","b",""], "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["a","b",""], "b1x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["a","b",""], "b1x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [1,2.5])
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [1,2.5])
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [1,2.5], "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [1,2.5], "b")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [1,2.5], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [1,2.5], "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", [1,2.5], "V")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [1,2.5], "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [1,2.5], "\<C-v>")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [1,2.5], "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", [1,2.5], "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", [1,2.5], "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\n\nb")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb", "c")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\n\nb", "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb", "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb", "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\n\nb", "b5")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\n\nb", "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb", "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\n\nb", "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\n\nb", "V")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\n\nb", "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb", "\<C-v>3")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\n\nb", "\<C-v>3")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\n\nb", "b0")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", "a\n\nb", "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\n\nb", "b0")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "a\n\nb", "x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", "a\n\nb", "b1x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["日本","a"])
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["日本","a"])
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["日本","a"], "c")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["日本","a"], "l")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["日本","a"], "l")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["日本","a"], "b")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["日本","a"], "v")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["日本","a"], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["日本","a"], "\<C-v>")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["日本","a"], "b0")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["日本","a"], "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["日本","a"], "b0")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["日本","a"], "b1x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["ab","c","defg"])
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["ab","c","defg"], "c")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["ab","c","defg"], "c")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["ab","c","defg"], "l")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["ab","c","defg"], "b")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["ab","c","defg"], "b")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["ab","c","defg"], "b5")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["ab","c","defg"], "v")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["ab","c","defg"], "v")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["ab","c","defg"], "\<C-v>")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["ab","c","defg"], "\<C-v>3")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["ab","c","defg"], "b0")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["ab","c","defg"], "b0")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["ab","c","defg"], "x")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("A", ["ab","c","defg"], "cl")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", ["ab","c","defg"], "b1x")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
echo setreg(""", ["ab","c","defg"], "b1x")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
"---
echo setreg("a", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo @a
"---
echo setreg("a", "a\nb")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo @a
"---
echo setreg("a", ["a","b"])
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo @a
"---
echo setreg("A", "ab")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
echo @A
"---
echo setreg("A", "a\nb")
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
echo @A
"---
echo setreg("A", ["a","b"])
echo [getreg("A"), getregtype("A"), getreg("A", 1, 1)] [getreg(), getregtype()]
echo @A
"---
echo setreg(""", "ab")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo @"
"---
echo setreg(""", "a\nb")
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo @"
"---
echo setreg(""", ["a","b"])
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo @"
"---
echo setreg("0", "ab")
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo @0
"---
echo setreg("0", "a\nb")
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo @0
"---
echo setreg("0", ["a","b"])
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo @0
"---
echo setreg("1", "ab")
"---
echo setreg("1", "a\nb")
"---
echo setreg("1", ["a","b"])
"---
echo setreg("-", "ab")
echo [getreg("-"), getregtype("-"), getreg("-", 1, 1)] [getreg(), getregtype()]
echo @-
"---
echo setreg("-", "a\nb")
echo [getreg("-"), getregtype("-"), getreg("-", 1, 1)] [getreg(), getregtype()]
echo @-
"---
echo setreg("-", ["a","b"])
echo [getreg("-"), getregtype("-"), getreg("-", 1, 1)] [getreg(), getregtype()]
echo @-
"---
echo setreg("_", "ab")
"---
echo setreg("_", "a\nb")
"---
echo setreg("_", ["a","b"])
"---
echo setreg("/", "ab")
"---
echo setreg("/", "a\nb")
"---
echo setreg("/", ["a","b"])
"---
echo setreg("=", "ab")
"---
echo setreg("=", "a\nb")
"---
echo setreg("=", ["a","b"])
"---
echo setreg("z", "ab")
"---
echo setreg("z", "a\nb")
"---
echo setreg("z", ["a","b"])
"---
echo setreg("Z", "ab")
"---
echo setreg("Z", "a\nb")
"---
echo setreg("Z", ["a","b"])
"---
echo setreg("#", "ab")
"---
echo setreg("#", "a\nb")
"---
echo setreg("#", ["a","b"])
"---
echo setreg("%", "ab")
"---
echo setreg("%", "a\nb")
"---
echo setreg("%", ["a","b"])
"---
echo setreg(".", "ab")
"---
echo setreg(".", "a\nb")
"---
echo setreg(".", ["a","b"])
"---
echo setreg(":", "ab")
"---
echo setreg(":", "a\nb")
"---
echo setreg(":", ["a","b"])
"---
echo setreg("*", "ab")
"---
echo setreg("*", "a\nb")
"---
echo setreg("*", ["a","b"])
"---
echo setreg("+", "ab")
"---
echo setreg("+", "a\nb")
"---
echo setreg("+", ["a","b"])
"---
call setreg("a", "abc")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "c")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "l")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc", "b")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "c")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "l")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def\n", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def\n", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def\n", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def\n", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "abc\n", "b")
echo setreg("a", "def\n", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", ["c"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", ["c"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", ["c"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", ["c"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", ["c"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", ["c"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", ["c"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", ["c"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", ["c"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", ["c"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", ["c"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", ["c"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", ["c"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", ["c"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", ["c"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", ["c"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", ["c"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", ["c"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", ["c"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", ["c"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", ["c","d"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", ["c","d"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", ["c","d"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", ["c","d"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", ["c","d"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", ["c","d"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", ["c","d"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", ["c","d"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", ["c","d"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", ["c","d"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", ["c","d"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", ["c","d"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", ["c","d"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", ["c","d"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", ["c","d"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", ["c","d"], "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", ["c","d"], "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", ["c","d"], "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", ["c","d"], "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", ["c","d"], "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", "c", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", "c", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", "c", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", "c", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"])
echo setreg("a", "c", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", "c", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", "c", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", "c", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", "c", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "c")
echo setreg("a", "c", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", "c", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", "c", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", "c", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", "c", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "l")
echo setreg("a", "c", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", "c", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", "c", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", "c", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", "c", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", ["a","b"], "b")
echo setreg("a", "c", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb")
echo setreg("a", "c\nd", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb")
echo setreg("a", "c\nd", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb")
echo setreg("a", "c\nd", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb")
echo setreg("a", "c\nd", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb")
echo setreg("a", "c\nd", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "c")
echo setreg("a", "c\nd", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "c")
echo setreg("a", "c\nd", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "c")
echo setreg("a", "c\nd", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "c")
echo setreg("a", "c\nd", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "c")
echo setreg("a", "c\nd", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "l")
echo setreg("a", "c\nd", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "l")
echo setreg("a", "c\nd", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "l")
echo setreg("a", "c\nd", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "l")
echo setreg("a", "c\nd", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "l")
echo setreg("a", "c\nd", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "b")
echo setreg("a", "c\nd", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "b")
echo setreg("a", "c\nd", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "b")
echo setreg("a", "c\nd", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "b")
echo setreg("a", "c\nd", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\nb", "b")
echo setreg("a", "c\nd", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", "", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", "", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", "", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", "", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a")
echo setreg("a", "", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", "", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", "", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", "", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", "", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "c")
echo setreg("a", "", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", "", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", "", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", "", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", "", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "l")
echo setreg("a", "", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", "", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", "", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", "", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", "", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a", "b")
echo setreg("a", "", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "")
echo setreg("a", "a", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "")
echo setreg("a", "a", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "")
echo setreg("a", "a", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "")
echo setreg("a", "a", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "")
echo setreg("a", "a", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "c")
echo setreg("a", "a", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "c")
echo setreg("a", "a", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "c")
echo setreg("a", "a", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "c")
echo setreg("a", "a", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "c")
echo setreg("a", "a", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "l")
echo setreg("a", "a", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "l")
echo setreg("a", "a", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "l")
echo setreg("a", "a", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "l")
echo setreg("a", "a", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "l")
echo setreg("a", "a", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "b")
echo setreg("a", "a", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "b")
echo setreg("a", "a", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "b")
echo setreg("a", "a", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "b")
echo setreg("a", "a", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "", "b")
echo setreg("a", "a", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n")
echo setreg("a", "b", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n")
echo setreg("a", "b", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n")
echo setreg("a", "b", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n")
echo setreg("a", "b", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n")
echo setreg("a", "b", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "c")
echo setreg("a", "b", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "c")
echo setreg("a", "b", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "c")
echo setreg("a", "b", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "c")
echo setreg("a", "b", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "c")
echo setreg("a", "b", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "l")
echo setreg("a", "b", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "l")
echo setreg("a", "b", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "l")
echo setreg("a", "b", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "l")
echo setreg("a", "b", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "l")
echo setreg("a", "b", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "b")
echo setreg("a", "b", "a")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "b")
echo setreg("a", "b", "ac")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "b")
echo setreg("a", "b", "al")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "b")
echo setreg("a", "b", "ab")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a", "a\n", "b")
echo setreg("a", "b", "A")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a","x")
call setreg("A","y")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a","x\n")
call setreg("A","y\n")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a","x\n")
call setreg("A","y")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("a","x")
call setreg("A","y\n")
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
"---
call setreg("b", "keep")
echo setreg("a", {})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"abc"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"abc"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"abc"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"abc"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"abc"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"abc"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":["a","b"],"regtype":"l"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":["a","b"],"regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":["a","b"],"regtype":"l"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":["a","b"],"regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":["a","b"],"regtype":"l"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":["a","b"],"regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"a\nb","regtype":"b4"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"a\nb","regtype":"b4"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"a\nb","regtype":"b4"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"a\nb","regtype":"b4"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"a\nb","regtype":"b4"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"a\nb","regtype":"b4"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regtype":"c"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regtype":"c"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regtype":"c"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regtype":"c"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regtype":"c"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regtype":"c"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"x","regtype":"q"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"x","regtype":"q"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"x","regtype":"q"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"x","regtype":"q"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"x","regtype":"q"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"x","regtype":"q"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"x","regtype":"cc"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"x","regtype":"cc"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"x","regtype":"cc"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"x","regtype":"cc"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"x","regtype":"cc"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"x","regtype":"cc"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"x","points_to":"a"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"x","points_to":"a"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"x","points_to":"a"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"x","points_to":"a"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"x","points_to":"a"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"x","points_to":"a"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"x","isunnamed":1})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"x","isunnamed":1}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"x","isunnamed":1})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"x","isunnamed":1}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"x","isunnamed":1})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"x","isunnamed":1}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":[1],"regtype":"l"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":[1],"regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":[1],"regtype":"l"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":[1],"regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":[1],"regtype":"l"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":[1],"regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":{}})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":{}}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":{}})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":{}}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":{}})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":{}}, "l")
"---
call setreg("b", "keep")
echo setreg("a", {"regcontents":"x","regtype":"l"})
echo [getreg("a"), getregtype("a"), getreg("a", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("a", {"regcontents":"x","regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg(""", {"regcontents":"x","regtype":"l"})
echo [getreg("""), getregtype("""), getreg(""", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg(""", {"regcontents":"x","regtype":"l"}, "l")
"---
call setreg("b", "keep")
echo setreg("0", {"regcontents":"x","regtype":"l"})
echo [getreg("0"), getregtype("0"), getreg("0", 1, 1)] [getreg(), getregtype()]
echo getreg("b") @"
"---
echo setreg("0", {"regcontents":"x","regtype":"l"}, "l")
"---
call setreg("a","A1")
call setreg("b","B1")
echo @"
call setreg("a","A2","u")
echo @"
"---
call setreg("a","A1")
call setreg("b","B1","u")
echo @" @a @b
call setreg("c","C","\"")
echo @"
"---
call setreg("b","B1")
echo @"
call setreg("\"","Q")
echo @" @0
"---
call setreg("", "empty")
echo @" @0
"---
call setreg("@", "at")
echo @" @0
"---
echo setreg()
echo setreg("a")
echo setreg("a",1,2,3)
echo setreg([],"x")
echo setreg("a",{})
echo setreg("a",[[1]])
echo setreg("a",{"regcontents":[{}]})
"---
echo setreg("a", ["x"], [])
"---
call setreg("/", "foo")
echo @/
"---
call setreg("/", ["foo","bar"])
echo @/
"---
call setreg("/", ["foo"])
echo @/ getreg("/")
"---
call setreg("=", "1+2")
echo getreg("=")
"---
call setreg("=", "1+2")
call setreg("=", "+3", "a")
echo getreg("=")
"---
call setreg("=", ["1","2"])
"---
call writefile(["a"],"x.y")
badd x.y
call setreg("#", 2)
echo bufname("#")
call setreg("#", "x.y")
echo bufname("#")
echo setreg("#", 9)
echo setreg("#", "nosuch")
