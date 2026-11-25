# Cross-library comparison tables

**Regenerate with every performance-relevant change** (rule in AGENTS.md): in the harness repository [`piece-tree-bench`](https://github.com/shurizzle/piece-tree-bench), `PIECE_TREE_PATH=<checkout>/crates/piece-tree tools/run.sh <dir>` with nothing else running (~25 minutes), then `python3 -I tools/tables.py <dir> <path of this file>`.

The full results of the last cross-library run, one section per corpus, for every library and both allocators. Nothing here is a claim by itself: the reading, the noise and the history are in [benchmarks.md](benchmarks.md).

**What was run**: the harness `piece-tree-bench` (a separate repository, not part of this workspace; four libraries in one binary, fat LTO, `codegen-units = 1`): piece-tree (this tree, with `Text::insert_mut` for the typing row, D19), ropey 1.6.1, ropey 2.0.0-beta.1, and Zed's `Rope` on `sum_tree` (`77228009dd267dcf8ab9a20eef5802b2a8ea4afa`). Apple M1 Pro, macOS, 3 runs per corpus and allocator, alternating the system-allocator and the mimalloc build. Each cell is **ns/op, the minimum over the 3 runs of each run's minimum of 7**, followed by the median over the 3 runs of each run's median in parentheses; bold marks the best library of the row (ties within the printed digit are both bold). "lead" is the second best over the best. Per-corpus texts: `synthetic` (generated source-like lines), `rust` (~64 MB of Rust sources from the cargo registry, wrapped when shorter than requested), `cjk` (CJK-heavy synthetic).

Reading hints (from the noise section of benchmarks.md): reads and loads repeat within a few percent; the edit rows (typing with clone per key, paste, random edits, batch) can differ 10-20% between runs of the same binary, and 5-10% between two builds of the same code. Differences under ~10% are not established.

## Synthetic corpus

### Synthetic corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.4 (0.4) | **0.1 (0.2)** | 0.3 (0.4) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.2 (29.1)** | 420 (474) | 691 (734) | 662 (675) | piece-tree | 15.46x |
| typing 10k chars in 1MB | **14.0 (14.2)** | 134 (143) | 48.4 (49.1) | 11 615 (11 866) | piece-tree | 3.46x |
| typing 10k, clone per key | **68.1 (79.9)** | 625 (637) | 477 (512) | 14 974 (16 357) | piece-tree | 7.01x |
| line() all, after typing | **5.3 (5.4)** | 184 (192) | 227 (231) | 170 (173) | piece-tree | 32.17x |
| line() 10x50 windows, typed | **5.6 (5.7)** | 192 (204) | 246 (251) | 190 (198) | piece-tree | 33.98x |
| backspace 10k | **19.9 (20.7)** | 178 (184) | 76.2 (79.2) | 12 523 (12 870) | piece-tree | 3.83x |
| offset_to_line random, typed | **12.3 (13.0)** | 113 (115) | 66.8 (68.4) | 42.7 (44.5) | piece-tree | 3.47x |
| paste mid-piece 1k on 10MB | **341 (354)** | 929 (1 117) | 678 (688) | 17 807 (19 108) | piece-tree | 1.99x |
| random edits 1k+1k on 10MB | **329 (339)** | 982 (1 132) | 606 (690) | 17 913 (18 647) | piece-tree | 1.84x |
| line() all, after edits | **14.9 (15.3)** | 193 (197) | 251 (254) | 197 (199) | piece-tree | 12.97x |
| batch 1k edits, one pass, 10MB | **90.1 (96.4)** | 672 (713) | 461 (519) | 5 758 (5 944) | piece-tree | 5.12x |

### Synthetic corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.4) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| line() random, loaded | **26.0 (30.2)** | 450 (467) | 683 (706) | 612 (636) | piece-tree | 17.31x |
| typing 10k chars in 1MB | **13.9 (14.0)** | 133 (138) | 47.8 (49.6) | 10 517 (10 816) | piece-tree | 3.44x |
| typing 10k, clone per key | **50.9 (67.6)** | 448 (623) | 272 (465) | 13 026 (13 547) | piece-tree | 5.34x |
| line() all, after typing | **5.3 (5.4)** | 189 (193) | 219 (223) | 169 (173) | piece-tree | 31.96x |
| line() 10x50 windows, typed | **5.5 (5.7)** | 196 (201) | 240 (248) | 190 (201) | piece-tree | 34.56x |
| backspace 10k | **20.1 (22.2)** | 184 (190) | 74.0 (78.2) | 11 541 (11 862) | piece-tree | 3.68x |
| offset_to_line random, typed | **12.7 (12.9)** | 111 (115) | 66.3 (68.8) | 38.9 (39.7) | piece-tree | 3.06x |
| paste mid-piece 1k on 10MB | **326 (331)** | 943 (1 011) | 597 (675) | 16 688 (17 790) | piece-tree | 1.83x |
| random edits 1k+1k on 10MB | **304 (308)** | 892 (968) | 595 (680) | 16 832 (17 922) | piece-tree | 1.96x |
| line() all, after edits | **15.7 (16.0)** | 194 (197) | 240 (243) | 195 (197) | piece-tree | 12.36x |
| batch 1k edits, one pass, 10MB | **77.6 (81.2)** | 617 (648) | 475 (488) | 4 976 (5 627) | piece-tree | 6.13x |

## Rust sources corpus

### Rust sources corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.4) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.3 (0.4) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **29.3 (33.9)** | 436 (460) | 700 (746) | 638 (655) | piece-tree | 14.87x |
| typing 10k chars in 1MB | **13.6 (14.0)** | 137 (139) | 52.1 (52.7) | 10 097 (10 432) | piece-tree | 3.83x |
| typing 10k, clone per key | **61.7 (81.9)** | 616 (645) | 492 (507) | 13 458 (13 977) | piece-tree | 7.97x |
| line() all, after typing | **5.2 (5.3)** | 175 (178) | 226 (231) | 169 (174) | piece-tree | 32.46x |
| line() 10x50 windows, typed | **5.6 (5.7)** | 183 (188) | 246 (255) | 192 (198) | piece-tree | 32.64x |
| backspace 10k | **20.3 (20.8)** | 186 (189) | 87.0 (89.1) | 11 092 (11 345) | piece-tree | 4.29x |
| offset_to_line random, typed | **12.7 (13.2)** | 102 (105) | 64.6 (67.6) | 44.5 (45.9) | piece-tree | 3.50x |
| paste mid-piece 1k on 10MB | **357 (366)** | 905 (1 045) | 667 (698) | 17 908 (19 273) | piece-tree | 1.87x |
| random edits 1k+1k on 10MB | **323 (361)** | 852 (957) | 574 (673) | 17 496 (19 269) | piece-tree | 1.78x |
| line() all, after edits | **13.8 (14.1)** | 180 (183) | 242 (247) | 171 (176) | piece-tree | 12.42x |
| batch 1k edits, one pass, 10MB | **94.6 (96.3)** | 663 (693) | 493 (514) | 5 628 (5 960) | piece-tree | 5.21x |

### Rust sources corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.2 (0.2) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.1 (28.5)** | 436 (482) | 664 (735) | 593 (598) | piece-tree | 16.10x |
| typing 10k chars in 1MB | **13.5 (13.9)** | 133 (137) | 50.9 (52.7) | 9 016 (9 260) | piece-tree | 3.77x |
| typing 10k, clone per key | **49.0 (67.9)** | 445 (557) | 252 (448) | 11 337 (12 491) | piece-tree | 5.15x |
| line() all, after typing | **5.2 (5.3)** | 171 (177) | 213 (218) | 167 (171) | piece-tree | 32.15x |
| line() 10x50 windows, typed | **5.5 (5.5)** | 178 (185) | 236 (245) | 193 (199) | piece-tree | 32.35x |
| backspace 10k | **19.9 (20.9)** | 185 (190) | 85.1 (85.6) | 10 064 (10 264) | piece-tree | 4.28x |
| offset_to_line random, typed | **12.5 (12.8)** | 101 (104) | 64.3 (66.8) | 40.7 (41.5) | piece-tree | 3.26x |
| paste mid-piece 1k on 10MB | **324 (346)** | 851 (949) | 561 (767) | 16 814 (17 796) | piece-tree | 1.73x |
| random edits 1k+1k on 10MB | **301 (309)** | 821 (927) | 596 (693) | 16 719 (18 076) | piece-tree | 1.98x |
| line() all, after edits | **14.2 (14.7)** | 175 (181) | 228 (232) | 171 (173) | piece-tree | 12.01x |
| batch 1k edits, one pass, 10MB | **83.5 (87.3)** | 600 (639) | 462 (490) | 5 063 (5 566) | piece-tree | 5.53x |

## CJK corpus

### CJK corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.3 (0.3) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **25.7 (26.0)** | 438 (448) | 673 (718) | 644 (655) | piece-tree | 17.02x |
| typing 10k chars in 1MB | **13.6 (13.8)** | 131 (133) | 45.2 (46.8) | 10 306 (10 463) | piece-tree | 3.32x |
| typing 10k, clone per key | **64.3 (79.8)** | 595 (655) | 462 (519) | 13 983 (14 640) | piece-tree | 7.19x |
| line() all, after typing | **5.2 (5.4)** | 184 (187) | 224 (231) | 176 (182) | piece-tree | 33.85x |
| line() 10x50 windows, typed | **5.6 (5.8)** | 190 (191) | 243 (251) | 199 (204) | piece-tree | 34.02x |
| backspace 10k | **19.9 (20.3)** | 173 (178) | 78.7 (79.8) | 11 256 (11 422) | piece-tree | 3.95x |
| offset_to_line random, typed | **11.6 (11.9)** | 101 (103) | 65.7 (66.6) | 42.2 (42.6) | piece-tree | 3.64x |
| paste mid-piece 1k on 10MB | **322 (338)** | 868 (987) | 659 (681) | 17 829 (18 883) | piece-tree | 2.05x |
| random edits 1k+1k on 10MB | **308 (324)** | 847 (946) | 588 (712) | 17 713 (18 903) | piece-tree | 1.91x |
| line() all, after edits | **16.2 (16.6)** | 197 (201) | 236 (242) | 207 (211) | piece-tree | 12.18x |
| batch 1k edits, one pass, 10MB | **83.6 (87.0)** | 670 (714) | 499 (527) | 5 767 (5 999) | piece-tree | 5.97x |

### CJK corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| line() random, loaded | **25.4 (25.9)** | 442 (466) | 663 (694) | 604 (651) | piece-tree | 17.39x |
| typing 10k chars in 1MB | **13.5 (14.0)** | 129 (134) | 45.2 (46.6) | 9 290 (9 452) | piece-tree | 3.35x |
| typing 10k, clone per key | **55.1 (68.3)** | 408 (572) | 253 (442) | 11 666 (12 434) | piece-tree | 4.59x |
| line() all, after typing | **5.3 (5.4)** | 186 (191) | 217 (224) | 176 (181) | piece-tree | 33.11x |
| line() 10x50 windows, typed | **5.5 (5.6)** | 191 (202) | 240 (248) | 198 (206) | piece-tree | 34.67x |
| backspace 10k | **19.9 (20.4)** | 173 (179) | 77.1 (81.8) | 10 191 (10 500) | piece-tree | 3.87x |
| offset_to_line random, typed | **11.8 (12.0)** | 103 (107) | 65.2 (67.5) | 38.4 (39.6) | piece-tree | 3.25x |
| paste mid-piece 1k on 10MB | **309 (318)** | 906 (978) | 567 (649) | 16 524 (18 109) | piece-tree | 1.84x |
| random edits 1k+1k on 10MB | **294 (303)** | 821 (911) | 574 (648) | 16 861 (17 818) | piece-tree | 1.95x |
| line() all, after edits | **17.1 (17.6)** | 196 (201) | 227 (232) | 207 (210) | piece-tree | 11.46x |
| batch 1k edits, one pass, 10MB | **72.4 (77.7)** | 614 (663) | 493 (508) | 5 070 (5 271) | piece-tree | 6.81x |
