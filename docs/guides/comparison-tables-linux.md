# Cross-library comparison tables

**Regenerate with every performance-relevant change** (rule in AGENTS.md): in the harness repository `piece-tree-bench`, `PIECE_TREE_PATH=<checkout>/crates/piece-tree tools/run.sh <dir>` with nothing else running (~25 minutes), then `python3 -I tools/tables.py <dir> <path of this file> [<platform>]`.

The full results of the last cross-library run, one section per corpus, for every library and both allocators. Nothing here is a claim by itself: the reading, the noise and the history are in [benchmarks.md](benchmarks.md).

**What was run**: the harness `piece-tree-bench` (a separate repository, not part of this workspace; four libraries in one binary, fat LTO, `codegen-units = 1`): piece-tree (this tree, with `Text::insert_mut` for the typing row, D19), ropey 1.6.1, ropey 2.0.0-beta.1, and Zed's `Rope` on `sum_tree` (`77228009dd267dcf8ab9a20eef5802b2a8ea4afa`). Intel Core i5-8365U (Whiskey Lake laptop, 4 cores / 8 threads, intel_pstate governor `performance`, turbo on), Linux 7.3 (CachyOS), glibc 2.44, x86_64 built without `target-cpu=native` (SSE2 newline scan), 3 runs per corpus and allocator, alternating the system-allocator and the mimalloc build. Each cell is **ns/op, the minimum over the 3 runs of each run's minimum of 7**, followed by the median over the 3 runs of each run's median in parentheses; bold marks the best library of the row (ties within the printed digit are both bold). "lead" is the second best over the best. Per-corpus texts: `synthetic` (generated source-like lines), `rust` (~64 MB of Rust sources from the cargo registry, wrapped when shorter than requested), `cjk` (CJK-heavy synthetic).

Reading hints (from the noise section of benchmarks.md): reads and loads repeat within a few percent; the edit rows (typing with clone per key, paste, random edits, batch) can differ 10-20% between runs of the same binary, and 5-10% between two builds of the same code. Differences under ~10% are not established.

## Synthetic corpus

### Synthetic corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | 0.6 (0.7) | 0.7 (0.9) | **0.4 (0.4)** | 0.6 (0.7) | ropey 2 beta | 1.50x |
| load 50MB from String (per byte) | **0.2 (0.3)** | 0.7 (0.8) | 0.4 (0.5) | 0.7 (0.8) | piece-tree | 2.00x |
| line() random, loaded | **51.9 (54.4)** | 702 (747) | 847 (911) | 727 (819) | piece-tree | 13.53x |
| typing 10k chars in 1MB | **30.4 (31.7)** | 223 (244) | 102 (110) | 18 623 (21 029) | piece-tree | 3.35x |
| typing 10k, clone per key | **130 (217)** | 1 456 (1 640) | 592 (1 009) | 25 254 (28 633) | piece-tree | 4.57x |
| line() all, after typing | **9.5 (10.9)** | 355 (386) | 353 (398) | 254 (292) | piece-tree | 26.78x |
| line() 10x50 windows, typed | **9.0 (11.8)** | 342 (396) | 355 (432) | 268 (310) | piece-tree | 29.73x |
| backspace 10k | **41.9 (48.9)** | 293 (359) | 143 (157) | 20 151 (23 528) | piece-tree | 3.41x |
| offset_to_line random, typed | **23.9 (26.0)** | 204 (219) | 120 (124) | 53.3 (60.6) | piece-tree | 2.23x |
| paste mid-piece 1k on 10MB | **528 (685)** | 1 855 (2 076) | 1 093 (1 418) | 28 717 (33 557) | piece-tree | 2.07x |
| random edits 1k+1k on 10MB | **508 (658)** | 1 635 (1 984) | 1 000 (1 398) | 28 864 (35 754) | piece-tree | 1.97x |
| line() all, after edits | **22.4 (25.3)** | 387 (413) | 409 (425) | 282 (313) | piece-tree | 12.61x |
| batch 1k edits, one pass, 10MB | **188 (217)** | 1 280 (1 518) | 749 (889) | 9 059 (9 594) | piece-tree | 3.98x |

### Synthetic corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.4 (0.4)** | 0.6 (0.8) | **0.4 (0.5)** | 0.7 (0.8) | piece-tree = ropey 2 beta | 1.00x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.6 (0.7) | 0.4 (0.4) | 0.6 (0.7) | piece-tree | 2.00x |
| line() random, loaded | **50.8 (54.9)** | 648 (749) | 839 (971) | 734 (852) | piece-tree | 12.76x |
| typing 10k chars in 1MB | **26.4 (28.3)** | 230 (254) | 88.4 (99.4) | 18 480 (20 650) | piece-tree | 3.35x |
| typing 10k, clone per key | **158 (177)** | 1 248 (1 354) | 603 (933) | 25 551 (27 996) | piece-tree | 3.81x |
| line() all, after typing | **8.9 (9.7)** | 335 (368) | 350 (391) | 245 (278) | piece-tree | 27.53x |
| line() 10x50 windows, typed | **10.9 (11.1)** | 347 (377) | 363 (408) | 242 (272) | piece-tree | 22.20x |
| backspace 10k | **46.9 (49.5)** | 330 (373) | 130 (166) | 21 145 (23 521) | piece-tree | 2.78x |
| offset_to_line random, typed | **25.9 (26.1)** | 190 (209) | 108 (127) | 51.4 (53.5) | piece-tree | 1.98x |
| paste mid-piece 1k on 10MB | **496 (592)** | 1 850 (1 971) | 1 338 (1 412) | 29 359 (33 247) | piece-tree | 2.69x |
| random edits 1k+1k on 10MB | **466 (558)** | 1 599 (1 932) | 1 201 (1 345) | 31 034 (37 006) | piece-tree | 2.58x |
| line() all, after edits | **22.4 (24.4)** | 351 (384) | 397 (424) | 288 (307) | piece-tree | 12.87x |
| batch 1k edits, one pass, 10MB | **154 (192)** | 1 475 (1 757) | 782 (1 016) | 8 342 (8 929) | piece-tree | 5.07x |

## Rust sources corpus

### Rust sources corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | 0.6 (0.7) | 0.7 (0.8) | **0.4 (0.5)** | 0.6 (0.8) | ropey 2 beta | 1.50x |
| load 50MB from String (per byte) | **0.2 (0.3)** | 0.7 (0.7) | 0.4 (0.5) | 0.6 (0.7) | piece-tree | 2.00x |
| line() random, loaded | **51.9 (54.2)** | 695 (826) | 820 (906) | 704 (772) | piece-tree | 13.39x |
| typing 10k chars in 1MB | **29.5 (32.1)** | 224 (268) | 92.3 (110) | 17 224 (19 369) | piece-tree | 3.13x |
| typing 10k, clone per key | **128 (221)** | 1 397 (1 649) | 544 (1 081) | 22 224 (24 634) | piece-tree | 4.26x |
| line() all, after typing | **9.0 (10.8)** | 334 (390) | 346 (394) | 233 (260) | piece-tree | 25.93x |
| line() 10x50 windows, typed | **9.8 (11.7)** | 323 (371) | 354 (391) | 236 (263) | piece-tree | 24.12x |
| backspace 10k | **41.9 (49.7)** | 317 (376) | 142 (156) | 18 941 (20 904) | piece-tree | 3.40x |
| offset_to_line random, typed | **22.6 (26.6)** | 173 (197) | 110 (126) | 46.5 (53.5) | piece-tree | 2.06x |
| paste mid-piece 1k on 10MB | **553 (642)** | 1 872 (2 107) | 1 172 (1 406) | 27 717 (32 005) | piece-tree | 2.12x |
| random edits 1k+1k on 10MB | **487 (611)** | 1 574 (1 981) | 1 125 (1 343) | 28 481 (30 531) | piece-tree | 2.31x |
| line() all, after edits | **22.0 (25.3)** | 382 (412) | 396 (427) | 273 (294) | piece-tree | 12.42x |
| batch 1k edits, one pass, 10MB | **168 (218)** | 1 396 (1 479) | 799 (1 020) | 8 319 (9 223) | piece-tree | 4.77x |

### Rust sources corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.4 (0.4)** | 0.6 (0.7) | **0.4 (0.5)** | 0.7 (1.1) | piece-tree = ropey 2 beta | 1.00x |
| load 50MB from String (per byte) | **0.2 (0.3)** | 0.6 (0.6) | 0.4 (0.5) | 0.6 (0.8) | piece-tree | 2.00x |
| line() random, loaded | **49.1 (53.4)** | 667 (804) | 839 (902) | 714 (824) | piece-tree | 13.58x |
| typing 10k chars in 1MB | **26.5 (26.9)** | 222 (263) | 95.2 (102) | 17 666 (19 460) | piece-tree | 3.59x |
| typing 10k, clone per key | **141 (181)** | 998 (1 512) | 657 (1 050) | 22 879 (27 086) | piece-tree | 4.67x |
| line() all, after typing | **8.8 (9.9)** | 322 (375) | 361 (395) | 237 (259) | piece-tree | 26.91x |
| line() 10x50 windows, typed | **8.9 (10.2)** | 310 (369) | 360 (392) | 261 (284) | piece-tree | 29.35x |
| backspace 10k | **40.1 (45.0)** | 322 (393) | 141 (155) | 18 668 (21 724) | piece-tree | 3.51x |
| offset_to_line random, typed | **21.7 (23.9)** | 169 (191) | 108 (115) | 48.3 (54.9) | piece-tree | 2.23x |
| paste mid-piece 1k on 10MB | **493 (630)** | 1 827 (2 021) | 1 220 (1 325) | 31 495 (34 794) | piece-tree | 2.48x |
| random edits 1k+1k on 10MB | **450 (615)** | 1 688 (2 062) | 1 024 (1 229) | 31 195 (35 214) | piece-tree | 2.28x |
| line() all, after edits | **22.8 (24.8)** | 369 (399) | 405 (425) | 278 (298) | piece-tree | 12.21x |
| batch 1k edits, one pass, 10MB | **146 (185)** | 1 307 (1 651) | 790 (884) | 8 899 (10 107) | piece-tree | 5.40x |

## CJK corpus

### CJK corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | 0.6 (0.7) | 0.7 (0.8) | **0.4 (0.5)** | 0.6 (0.7) | ropey 2 beta | 1.50x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.7 (0.8) | 0.4 (0.5) | 0.6 (0.7) | piece-tree | 2.00x |
| line() random, loaded | **45.6 (47.3)** | 698 (759) | 840 (888) | 738 (776) | piece-tree | 15.32x |
| typing 10k chars in 1MB | **30.5 (32.9)** | 207 (233) | 88.6 (97.9) | 17 392 (19 888) | piece-tree | 2.90x |
| typing 10k, clone per key | **145 (212)** | 1 432 (1 654) | 568 (984) | 23 056 (26 376) | piece-tree | 3.91x |
| line() all, after typing | **9.5 (10.1)** | 351 (409) | 362 (406) | 263 (293) | piece-tree | 27.69x |
| line() 10x50 windows, typed | **10.8 (11.4)** | 379 (420) | 367 (388) | 267 (303) | piece-tree | 24.74x |
| backspace 10k | **44.9 (48.6)** | 325 (368) | 151 (158) | 19 590 (20 872) | piece-tree | 3.36x |
| offset_to_line random, typed | **22.4 (24.3)** | 181 (218) | 117 (121) | 50.1 (55.4) | piece-tree | 2.24x |
| paste mid-piece 1k on 10MB | **564 (631)** | 1 847 (2 103) | 1 187 (1 393) | 28 368 (32 179) | piece-tree | 2.10x |
| random edits 1k+1k on 10MB | **489 (598)** | 1 732 (2 054) | 1 058 (1 345) | 28 657 (31 222) | piece-tree | 2.16x |
| line() all, after edits | **25.4 (27.2)** | 409 (432) | 408 (437) | 314 (330) | piece-tree | 12.35x |
| batch 1k edits, one pass, 10MB | **158 (174)** | 1 353 (1 466) | 788 (968) | 8 476 (8 986) | piece-tree | 4.99x |

### CJK corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.3 (0.4)** | 0.6 (0.8) | 0.4 (0.4) | 0.7 (0.8) | piece-tree | 1.33x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.6 (0.6) | 0.4 (0.4) | 0.6 (0.9) | piece-tree | 2.00x |
| line() random, loaded | **40.2 (42.9)** | 664 (752) | 859 (1 010) | 765 (801) | piece-tree | 16.52x |
| typing 10k chars in 1MB | **26.6 (28.4)** | 210 (227) | 86.1 (119) | 17 558 (19 063) | piece-tree | 3.24x |
| typing 10k, clone per key | **164 (174)** | 1 048 (1 339) | 587 (946) | 23 939 (26 374) | piece-tree | 3.57x |
| line() all, after typing | **9.0 (9.6)** | 356 (394) | 370 (403) | 276 (296) | piece-tree | 30.71x |
| line() 10x50 windows, typed | **10.3 (11.2)** | 359 (374) | 382 (400) | 264 (294) | piece-tree | 25.60x |
| backspace 10k | **43.1 (48.7)** | 304 (322) | 154 (173) | 20 004 (21 558) | piece-tree | 3.58x |
| offset_to_line random, typed | **23.1 (27.1)** | 184 (200) | 109 (136) | 49.2 (55.7) | piece-tree | 2.13x |
| paste mid-piece 1k on 10MB | **510 (642)** | 1 807 (2 114) | 1 355 (1 462) | 32 741 (40 043) | piece-tree | 2.66x |
| random edits 1k+1k on 10MB | **496 (597)** | 1 685 (1 960) | 1 106 (1 403) | 32 491 (36 370) | piece-tree | 2.23x |
| line() all, after edits | **25.5 (28.9)** | 386 (412) | 420 (441) | 326 (340) | piece-tree | 12.80x |
| batch 1k edits, one pass, 10MB | **138 (160)** | 1 565 (1 752) | 869 (979) | 8 277 (9 583) | piece-tree | 6.29x |
