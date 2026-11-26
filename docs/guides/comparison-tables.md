# Cross-library comparison tables

**Regenerate with every performance-relevant change** (rule in AGENTS.md): in the harness repository `piece-tree-bench`, `PIECE_TREE_PATH=<checkout>/crates/piece-tree tools/run.sh <dir>` with nothing else running (~25 minutes), then `python3 -I tools/tables.py <dir> <path of this file>`.

The full results of the last cross-library run, one section per corpus, for every library and both allocators. Nothing here is a claim by itself: the reading, the noise and the history are in [benchmarks.md](benchmarks.md).

**What was run**: the harness `piece-tree-bench` (a separate repository, not part of this workspace; four libraries in one binary, fat LTO, `codegen-units = 1`): piece-tree (this tree, with `Text::insert_mut` for the typing row, D19), ropey 1.6.1, ropey 2.0.0-beta.1, and Zed's `Rope` on `sum_tree` (`77228009dd267dcf8ab9a20eef5802b2a8ea4afa`). Apple M1 Pro, macOS, 3 runs per corpus and allocator, alternating the system-allocator and the mimalloc build. Each cell is **ns/op, the minimum over the 3 runs of each run's minimum of 7**, followed by the median over the 3 runs of each run's median in parentheses; bold marks the best library of the row (ties within the printed digit are both bold). "lead" is the second best over the best. Per-corpus texts: `synthetic` (generated source-like lines), `rust` (~64 MB of Rust sources from the cargo registry, wrapped when shorter than requested), `cjk` (CJK-heavy synthetic).

Reading hints (from the noise section of benchmarks.md): reads and loads repeat within a few percent; the edit rows (typing with clone per key, paste, random edits, batch) can differ 10-20% between runs of the same binary, and 5-10% between two builds of the same code. Differences under ~10% are not established.

## Synthetic corpus

### Synthetic corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.3 (0.4) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.1 (28.4)** | 424 (427) | 675 (740) | 640 (664) | piece-tree | 15.65x |
| typing 10k chars in 1MB | **12.3 (12.5)** | 134 (135) | 47.3 (48.5) | 11 352 (11 446) | piece-tree | 3.85x |
| typing 10k, clone per key | **63.3 (76.5)** | 674 (705) | 501 (542) | 14 972 (15 898) | piece-tree | 7.92x |
| line() all, after typing | **5.1 (5.1)** | 186 (188) | 220 (222) | 165 (166) | piece-tree | 32.37x |
| line() 10x50 windows, typed | **5.5 (5.8)** | 194 (195) | 238 (249) | 190 (200) | piece-tree | 34.47x |
| backspace 10k | **19.5 (21.3)** | 182 (186) | 74.1 (76.9) | 12 258 (12 487) | piece-tree | 3.80x |
| offset_to_line random, typed | **12.3 (13.0)** | 113 (114) | 64.9 (65.2) | 41.5 (43.4) | piece-tree | 3.37x |
| paste mid-piece 1k on 10MB | **331 (348)** | 1 049 (1 245) | 659 (667) | 17 864 (19 032) | piece-tree | 1.99x |
| random edits 1k+1k on 10MB | **309 (372)** | 897 (1 048) | 574 (757) | 17 348 (17 864) | piece-tree | 1.86x |
| line() all, after edits | **14.2 (14.3)** | 192 (192) | 244 (246) | 191 (192) | piece-tree | 13.46x |
| batch 1k edits, one pass, 10MB | **87.5 (90.2)** | 659 (718) | 460 (492) | 5 533 (5 834) | piece-tree | 5.25x |

### Synthetic corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.2 (0.2) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **26.3 (29.6)** | 432 (435) | 663 (672) | 599 (641) | piece-tree | 16.44x |
| typing 10k chars in 1MB | **12.8 (13.3)** | 133 (133) | 46.8 (49.9) | 10 225 (10 452) | piece-tree | 3.66x |
| typing 10k, clone per key | **50.1 (67.0)** | 433 (587) | 291 (451) | 12 726 (13 564) | piece-tree | 5.81x |
| line() all, after typing | **5.2 (5.4)** | 183 (186) | 213 (214) | 165 (167) | piece-tree | 31.73x |
| line() 10x50 windows, typed | **5.5 (5.6)** | 192 (192) | 237 (238) | 190 (191) | piece-tree | 34.51x |
| backspace 10k | **19.5 (20.0)** | 178 (180) | 74.3 (74.8) | 11 233 (11 577) | piece-tree | 3.81x |
| offset_to_line random, typed | **12.3 (12.5)** | 110 (111) | 64.9 (65.1) | 37.7 (39.1) | piece-tree | 3.07x |
| paste mid-piece 1k on 10MB | **324 (355)** | 940 (976) | 564 (646) | 16 326 (16 978) | piece-tree | 1.74x |
| random edits 1k+1k on 10MB | **305 (318)** | 868 (958) | 575 (636) | 16 238 (17 226) | piece-tree | 1.88x |
| line() all, after edits | **15.6 (15.7)** | 189 (190) | 235 (235) | 190 (191) | piece-tree | 12.12x |
| batch 1k edits, one pass, 10MB | **74.7 (80.8)** | 606 (642) | 452 (501) | 4 882 (5 006) | piece-tree | 6.05x |

## Rust sources corpus

### Rust sources corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.3 (0.4) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **25.9 (26.8)** | 420 (428) | 664 (672) | 630 (647) | piece-tree | 16.22x |
| typing 10k chars in 1MB | **12.3 (12.5)** | 127 (129) | 53.7 (55.4) | 10 404 (10 808) | piece-tree | 4.37x |
| typing 10k, clone per key | **62.6 (76.5)** | 732 (768) | 470 (490) | 14 295 (16 458) | piece-tree | 7.50x |
| line() all, after typing | **5.2 (5.2)** | 182 (184) | 221 (225) | 158 (160) | piece-tree | 30.46x |
| line() 10x50 windows, typed | **5.5 (5.6)** | 188 (193) | 239 (251) | 182 (183) | piece-tree | 33.04x |
| backspace 10k | **19.5 (19.5)** | 175 (177) | 84.2 (86.4) | 11 272 (11 695) | piece-tree | 4.32x |
| offset_to_line random, typed | **12.3 (12.3)** | 95.6 (95.9) | 63.9 (64.1) | 43.3 (44.0) | piece-tree | 3.52x |
| paste mid-piece 1k on 10MB | **340 (347)** | 910 (938) | 629 (646) | 17 745 (18 531) | piece-tree | 1.85x |
| random edits 1k+1k on 10MB | **310 (315)** | 821 (929) | 565 (644) | 17 041 (18 185) | piece-tree | 1.82x |
| line() all, after edits | **13.9 (14.0)** | 188 (189) | 242 (243) | 183 (184) | piece-tree | 13.14x |
| batch 1k edits, one pass, 10MB | **87.2 (88.2)** | 648 (672) | 460 (526) | 5 731 (5 917) | piece-tree | 5.28x |

### Rust sources corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.2 (0.2) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **26.0 (27.4)** | 427 (432) | 645 (667) | 590 (621) | piece-tree | 16.44x |
| typing 10k chars in 1MB | **12.9 (13.4)** | 126 (127) | 55.0 (56.0) | 9 336 (9 646) | piece-tree | 4.26x |
| typing 10k, clone per key | **47.3 (65.1)** | 422 (558) | 274 (456) | 11 740 (13 276) | piece-tree | 5.79x |
| line() all, after typing | **5.2 (5.4)** | 183 (184) | 214 (216) | 158 (160) | piece-tree | 30.44x |
| line() 10x50 windows, typed | **5.4 (5.6)** | 188 (190) | 237 (238) | 181 (192) | piece-tree | 33.48x |
| backspace 10k | **19.9 (20.8)** | 176 (183) | 84.4 (84.9) | 10 314 (10 508) | piece-tree | 4.24x |
| offset_to_line random, typed | **12.3 (12.9)** | 96.1 (99.6) | 63.9 (64.1) | 39.8 (40.0) | piece-tree | 3.24x |
| paste mid-piece 1k on 10MB | **347 (367)** | 869 (915) | 588 (635) | 16 718 (17 132) | piece-tree | 1.70x |
| random edits 1k+1k on 10MB | **304 (341)** | 817 (917) | 566 (629) | 16 427 (17 372) | piece-tree | 1.86x |
| line() all, after edits | **15.2 (15.4)** | 189 (190) | 233 (234) | 181 (182) | piece-tree | 11.91x |
| batch 1k edits, one pass, 10MB | **77.5 (87.9)** | 587 (604) | 471 (487) | 4 967 (5 654) | piece-tree | 6.07x |

## CJK corpus

### CJK corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.2 (0.3) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.1 (31.2)** | 434 (440) | 676 (690) | 645 (676) | piece-tree | 16.00x |
| typing 10k chars in 1MB | **12.3 (12.5)** | 130 (130) | 45.2 (46.1) | 10 154 (10 256) | piece-tree | 3.67x |
| typing 10k, clone per key | **65.8 (76.6)** | 621 (636) | 465 (502) | 13 915 (18 274) | piece-tree | 7.07x |
| line() all, after typing | **5.3 (5.3)** | 185 (186) | 223 (224) | 175 (177) | piece-tree | 33.04x |
| line() 10x50 windows, typed | **5.6 (5.7)** | 191 (191) | 242 (242) | 197 (199) | piece-tree | 34.07x |
| backspace 10k | **19.5 (19.8)** | 173 (174) | 77.1 (79.7) | 11 023 (11 199) | piece-tree | 3.95x |
| offset_to_line random, typed | **11.6 (11.6)** | 101 (102) | 64.9 (66.6) | 41.4 (41.9) | piece-tree | 3.57x |
| paste mid-piece 1k on 10MB | **327 (341)** | 937 (988) | 668 (710) | 17 458 (18 238) | piece-tree | 2.05x |
| random edits 1k+1k on 10MB | **301 (314)** | 828 (939) | 574 (692) | 17 228 (17 586) | piece-tree | 1.91x |
| line() all, after edits | **15.7 (15.8)** | 196 (197) | 235 (237) | 205 (208) | piece-tree | 12.46x |
| batch 1k edits, one pass, 10MB | **81.5 (84.2)** | 668 (685) | 430 (528) | 5 634 (5 918) | piece-tree | 5.28x |

### CJK corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| line() random, loaded | **25.1 (26.1)** | 444 (484) | 665 (678) | 601 (608) | piece-tree | 17.69x |
| typing 10k chars in 1MB | **12.8 (12.9)** | 129 (129) | 45.2 (47.9) | 9 129 (9 447) | piece-tree | 3.53x |
| typing 10k, clone per key | **57.0 (64.9)** | 399 (550) | 255 (461) | 11 696 (12 744) | piece-tree | 4.48x |
| line() all, after typing | **5.4 (5.4)** | 185 (186) | 218 (221) | 175 (175) | piece-tree | 32.33x |
| line() 10x50 windows, typed | **5.6 (5.6)** | 191 (192) | 243 (243) | 198 (204) | piece-tree | 34.16x |
| backspace 10k | **19.5 (19.5)** | 172 (174) | 77.3 (78.0) | 10 128 (10 397) | piece-tree | 3.96x |
| offset_to_line random, typed | **11.5 (11.6)** | 102 (102) | 64.7 (67.8) | 37.1 (38.9) | piece-tree | 3.23x |
| paste mid-piece 1k on 10MB | **319 (326)** | 862 (908) | 580 (677) | 16 503 (17 585) | piece-tree | 1.82x |
| random edits 1k+1k on 10MB | **290 (294)** | 814 (896) | 562 (633) | 16 636 (18 420) | piece-tree | 1.94x |
| line() all, after edits | **17.2 (17.3)** | 196 (197) | 226 (228) | 205 (206) | piece-tree | 11.38x |
| batch 1k edits, one pass, 10MB | **69.8 (70.7)** | 606 (692) | 466 (496) | 5 010 (5 246) | piece-tree | 6.68x |
