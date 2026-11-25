# Cross-library comparison tables

**Regenerate with every performance-relevant change** (rule in AGENTS.md): in the harness repository `piece-tree-bench`, `tools/run.sh <dir>` with nothing else running (~25 minutes), then `python3 -I tools/tables.py <dir> <path of this file>`.

The full results of the last cross-library run, one section per corpus, for every library and both allocators. Nothing here is a claim by itself: the reading, the noise and the history are in [benchmarks.md](benchmarks.md).

**What was run**: the harness `piece-tree-bench` (a separate repository, not part of this workspace; four libraries in one binary, fat LTO, `codegen-units = 1`): piece-tree (this tree, with `Text::insert_mut` for the typing row, D19), ropey 1.6.1, ropey 2.0.0-beta.1, and Zed's `Rope` on `sum_tree` (`77228009dd267dcf8ab9a20eef5802b2a8ea4afa`). Apple M1 Pro, macOS, 3 runs per corpus and allocator, alternating the system-allocator and the mimalloc build. Each cell is **ns/op, the minimum over the 3 runs of each run's minimum of 7**, followed by the median over the 3 runs of each run's median in parentheses; bold marks the best library of the row (ties within the printed digit are both bold). "lead" is the second best over the best. Per-corpus texts: `synthetic` (generated source-like lines), `rust` (~64 MB of Rust sources from the cargo registry, wrapped when shorter than requested), `cjk` (CJK-heavy synthetic).

Reading hints (from the noise section of benchmarks.md): reads and loads repeat within a few percent; the edit rows (typing with clone per key, paste, random edits, batch) can differ 10-20% between runs of the same binary, and 5-10% between two builds of the same code. Differences under ~10% are not established.

## Synthetic corpus

### Synthetic corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.4) | **0.1 (0.2)** | 0.3 (0.4) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.2 (32.9)** | 438 (462) | 718 (770) | 659 (702) | piece-tree | 16.11x |
| typing 10k chars in 1MB | **12.8 (13.5)** | 134 (143) | 51.6 (54.9) | 11 339 (11 786) | piece-tree | 4.03x |
| typing 10k, clone per key | **67.5 (84.7)** | 436 (644) | 360 (505) | 15 124 (19 061) | piece-tree | 5.33x |
| line() all, after typing | **5.1 (5.3)** | 184 (189) | 221 (228) | 170 (173) | piece-tree | 33.35x |
| line() 10x50 windows, typed | **5.4 (5.6)** | 192 (198) | 239 (246) | 192 (200) | piece-tree | 35.56x |
| backspace 10k | **53.0 (55.2)** | 180 (186) | 74.0 (78.9) | 12 238 (12 687) | piece-tree | 1.40x |
| offset_to_line random, typed | **12.2 (12.8)** | 110 (114) | 65.1 (67.1) | 41.7 (43.4) | piece-tree | 3.42x |
| paste mid-piece 1k on 10MB | 687 (755) | 950 (1 064) | **664 (688)** | 18 040 (19 973) | ropey 2 beta | 1.04x |
| random edits 1k+1k on 10MB | 644 (663) | 880 (1 015) | **581 (791)** | 17 250 (19 229) | ropey 2 beta | 1.11x |
| line() all, after edits | **14.4 (14.9)** | 191 (194) | 246 (252) | 193 (198) | piece-tree | 13.28x |
| batch 1k edits, one pass, 10MB | **87.6 (94.7)** | 685 (732) | 489 (511) | 5 592 (5 886) | piece-tree | 5.58x |

### Synthetic corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.2 (0.2) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **26.4 (27.7)** | 441 (464) | 679 (724) | 608 (624) | piece-tree | 16.70x |
| typing 10k chars in 1MB | **12.6 (13.0)** | 133 (137) | 47.1 (49.0) | 10 267 (10 701) | piece-tree | 3.74x |
| typing 10k, clone per key | **50.9 (67.5)** | 445 (614) | 267 (456) | 13 027 (14 476) | piece-tree | 5.25x |
| line() all, after typing | **5.2 (5.5)** | 185 (193) | 226 (233) | 166 (171) | piece-tree | 31.83x |
| line() 10x50 windows, typed | **5.5 (5.7)** | 193 (203) | 248 (256) | 190 (196) | piece-tree | 34.51x |
| backspace 10k | **39.4 (40.8)** | 179 (189) | 89.5 (91.2) | 11 358 (11 850) | piece-tree | 2.27x |
| offset_to_line random, typed | **12.3 (12.8)** | 110 (116) | 65.8 (67.2) | 37.6 (38.8) | piece-tree | 3.06x |
| paste mid-piece 1k on 10MB | **449 (492)** | 913 (997) | 593 (688) | 16 419 (17 488) | piece-tree | 1.32x |
| random edits 1k+1k on 10MB | **430 (436)** | 909 (1 017) | 588 (660) | 16 660 (18 186) | piece-tree | 1.37x |
| line() all, after edits | **15.6 (16.2)** | 190 (197) | 252 (258) | 192 (196) | piece-tree | 12.21x |
| batch 1k edits, one pass, 10MB | **76.0 (81.4)** | 608 (632) | 483 (544) | 4 932 (5 090) | piece-tree | 6.36x |

## Rust sources corpus

### Rust sources corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.3 (0.4) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.9 (33.7)** | 446 (480) | 696 (710) | 645 (664) | piece-tree | 15.99x |
| typing 10k chars in 1MB | **12.8 (13.7)** | 133 (137) | 58.5 (59.2) | 10 251 (10 517) | piece-tree | 4.57x |
| typing 10k, clone per key | **66.4 (81.2)** | 420 (623) | 356 (490) | 13 430 (14 687) | piece-tree | 5.37x |
| line() all, after typing | **5.1 (5.3)** | 171 (175) | 227 (230) | 172 (174) | piece-tree | 33.55x |
| line() 10x50 windows, typed | **5.6 (5.6)** | 178 (184) | 247 (255) | 192 (198) | piece-tree | 31.82x |
| backspace 10k | **53.7 (55.5)** | 182 (189) | 85.2 (86.5) | 11 147 (11 370) | piece-tree | 1.59x |
| offset_to_line random, typed | **12.3 (12.9)** | 99.2 (103) | 64.5 (66.0) | 44.4 (46.1) | piece-tree | 3.61x |
| paste mid-piece 1k on 10MB | **634 (777)** | 895 (1 020) | 652 (689) | 18 253 (18 815) | piece-tree | 1.03x |
| random edits 1k+1k on 10MB | 674 (746) | 852 (1 088) | **583 (664)** | 18 197 (19 767) | ropey 2 beta | 1.16x |
| line() all, after edits | **13.3 (13.7)** | 177 (180) | 244 (244) | 176 (176) | piece-tree | 13.21x |
| batch 1k edits, one pass, 10MB | **92.9 (98.9)** | 657 (697) | 488 (532) | 5 776 (6 254) | piece-tree | 5.26x |

### Rust sources corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | **0.1 (0.2)** | 0.2 (0.3) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **27.6 (29.0)** | 447 (455) | 690 (710) | 605 (626) | piece-tree | 16.21x |
| typing 10k chars in 1MB | **13.0 (13.1)** | 136 (142) | 52.4 (52.6) | 9 216 (9 406) | piece-tree | 4.03x |
| typing 10k, clone per key | **48.7 (69.9)** | 415 (567) | 284 (445) | 11 629 (12 448) | piece-tree | 5.84x |
| line() all, after typing | **5.3 (5.4)** | 176 (177) | 231 (232) | 172 (173) | piece-tree | 32.51x |
| line() 10x50 windows, typed | **5.7 (5.7)** | 181 (184) | 254 (256) | 197 (199) | piece-tree | 31.74x |
| backspace 10k | **40.7 (40.9)** | 185 (188) | 104 (105) | 10 260 (10 389) | piece-tree | 2.56x |
| offset_to_line random, typed | **12.6 (12.7)** | 102 (103) | 65.2 (66.0) | 41.7 (42.0) | piece-tree | 3.31x |
| paste mid-piece 1k on 10MB | **467 (479)** | 880 (941) | 596 (690) | 17 384 (18 536) | piece-tree | 1.28x |
| random edits 1k+1k on 10MB | **447 (462)** | 844 (918) | 582 (652) | 16 983 (18 586) | piece-tree | 1.30x |
| line() all, after edits | **14.8 (14.9)** | 180 (180) | 252 (253) | 175 (176) | piece-tree | 11.84x |
| batch 1k edits, one pass, 10MB | **82.7 (87.2)** | 611 (631) | 500 (521) | 5 073 (5 408) | piece-tree | 6.04x |

## CJK corpus

### CJK corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.3 (0.3) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.4) | **0.1 (0.2)** | 0.3 (0.3) | piece-tree = ropey 2 beta | 1.00x |
| line() random, loaded | **25.8 (27.9)** | 456 (475) | 695 (727) | 653 (677) | piece-tree | 17.67x |
| typing 10k chars in 1MB | **13.1 (13.4)** | 131 (135) | 51.7 (53.3) | 10 509 (10 740) | piece-tree | 3.95x |
| typing 10k, clone per key | **65.9 (79.7)** | 435 (676) | 405 (490) | 14 126 (15 550) | piece-tree | 6.14x |
| line() all, after typing | **5.3 (5.3)** | 189 (190) | 230 (231) | 181 (184) | piece-tree | 34.09x |
| line() 10x50 windows, typed | **5.7 (5.7)** | 195 (202) | 246 (252) | 201 (206) | piece-tree | 34.25x |
| backspace 10k | **54.4 (55.2)** | 178 (185) | 79.5 (80.4) | 11 427 (11 778) | piece-tree | 1.46x |
| offset_to_line random, typed | **11.7 (11.9)** | 104 (105) | 66.8 (68.4) | 42.7 (42.9) | piece-tree | 3.65x |
| paste mid-piece 1k on 10MB | **659 (715)** | 904 (1 042) | 678 (742) | 18 303 (19 283) | piece-tree | 1.03x |
| random edits 1k+1k on 10MB | 642 (668) | 853 (1 012) | **584 (712)** | 18 084 (19 112) | ropey 2 beta | 1.10x |
| line() all, after edits | **16.4 (16.6)** | 200 (202) | 242 (244) | 211 (212) | piece-tree | 12.18x |
| batch 1k edits, one pass, 10MB | **84.9 (89.6)** | 681 (720) | 456 (546) | 5 805 (6 155) | piece-tree | 5.38x |

### CJK corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| load 50MB from String (per byte) | **0.1 (0.1)** | 0.3 (0.3) | 0.2 (0.2) | 0.2 (0.2) | piece-tree | 2.00x |
| line() random, loaded | **25.6 (26.2)** | 455 (468) | 691 (730) | 623 (647) | piece-tree | 17.76x |
| typing 10k chars in 1MB | **13.0 (13.1)** | 130 (135) | 45.5 (46.8) | 9 373 (9 548) | piece-tree | 3.50x |
| typing 10k, clone per key | **57.6 (69.6)** | 410 (566) | 250 (448) | 12 014 (12 323) | piece-tree | 4.34x |
| line() all, after typing | **5.3 (5.5)** | 191 (192) | 236 (237) | 181 (184) | piece-tree | 34.13x |
| line() 10x50 windows, typed | **5.6 (5.8)** | 193 (198) | 255 (263) | 200 (208) | piece-tree | 34.43x |
| backspace 10k | **39.6 (40.8)** | 173 (180) | 95.5 (96.2) | 10 359 (10 674) | piece-tree | 2.41x |
| offset_to_line random, typed | **11.7 (12.0)** | 103 (107) | 65.5 (67.4) | 37.6 (39.1) | piece-tree | 3.21x |
| paste mid-piece 1k on 10MB | **454 (465)** | 894 (932) | 572 (649) | 17 042 (17 749) | piece-tree | 1.26x |
| random edits 1k+1k on 10MB | **436 (444)** | 854 (920) | 582 (654) | 17 076 (18 728) | piece-tree | 1.33x |
| line() all, after edits | **17.6 (17.8)** | 201 (203) | 249 (252) | 210 (212) | piece-tree | 11.44x |
| batch 1k edits, one pass, 10MB | **72.3 (73.4)** | 614 (708) | 481 (546) | 5 118 (5 618) | piece-tree | 6.65x |
